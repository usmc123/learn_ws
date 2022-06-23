#include <stdio.h>
#include <stdlib.h>
 #include <unistd.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <fcntl.h>
 #include <termios.h>  /*PPSIX 终端控制定义*/ 
#include <errno.h> /*错误号定义*/ 
#include "comm_service.h"

//宏定义
#define FALSE -1
#define TRUE 0


int main(int argc, char **argv)
{
    
    ros::init(argc, argv,"DJI_dbus_RX");
    ros::NodeHandle n;
    setlocale(LC_ALL,"");
    char buf[128];

    agv_sim_control_test::cmd_xyw cmd_xyw;

    ros::Publisher pub = n.advertise<agv_sim_control_test::cmd_xyw>("/cmd_xyw",10);
    

    dst_ccms_api::comm_service Usart_485;

    Usart_485.CommInit(115200,0,8,1,'O');
    // int comm_service::CommInit(int speed, int flow_ctrl, int databits, int stopbits, int parity)
    char port[]="/dev/ttyUSB0";
    Usart_485.CommOpen(port);
    ros::Rate rate(100);

    struct Command_Sbus cmd_sbus;
    bool send_flag=false;
    ROS_INFO("串口打开");
    
    while (ros::ok())
    {
        /* code */
        Usart_485.CommRecv(buf,4);
        uint8_t index=0;
            if (buf[0]=0xA5)
            {
                /* code */
                if( Usart_485.Verify_CRC8_Check_Sum((uint8_t *)buf,4) )
                {
                    index+=4;
                    int16_t* len=(int16_t *)&buf[1];
                    
                    // printf("len = %d\n",*len);
                    Usart_485.CommRecv(buf+index,2);
                    switch (*(uint16_t*)(buf+index))
                    {
                    case CMD_SBUS:
                        index+=2;
                        Usart_485.CommRecv(buf+index,*len+2);
                        if (Usart_485.Verify_CRC16_Check_Sum((uint8_t *)buf,*len+8))
                        {
                            memcpy((void *)&cmd_sbus,(void *)(buf+index),*len);
                            printf("cmd_sbus:vx=%d,vy=%d,vw=%d\n",cmd_sbus.vx,cmd_sbus.vy,cmd_sbus.vw);
                            send_flag=true;
                            
                        }
                        
                        break;
                    
                    default:
                        break;
                    }
                    
                }
            }
            

        //串口接收和赋值

        //
        if (send_flag==true && cmd_sbus.mode==MODE_NORMAL)
        {
            printf("fuck");
            cmd_xyw.vx=cmd_sbus.vy/600.0f;
            cmd_xyw.vy=-cmd_sbus.vx/600.0f;
            cmd_xyw.vw=-cmd_sbus.vw/600.0f;
            pub.publish(cmd_xyw);
        }
        
        
        //  rate.sleep();
    }

    Usart_485.CommClose();
    
    


    
    return 0;
}

