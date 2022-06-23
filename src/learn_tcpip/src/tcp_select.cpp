#include <stdio.h>
#include <ros/ros.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <netinet/in.h>
#include <ctype.h>
#include <arpa/inet.h>

#define SERV_PORT 9527

int main(int argc, char *argv[])
{
    /* code */
    int lfd = socket(AF_INET,SOCK_STREAM,0);
    int cfd = socket(AF_INET,SOCK_STREAM,0);
    char buf[BUFSIZ],client_ip[1024];//4096
    struct sockaddr_in serv_addr,client_addr;
    socklen_t client_addr_len;

    int opt=1;
    setsockopt(lfd,SOL_SOCKET,SO_REUSEADDR,&opt,sizeof(opt));//端口服用
    bzero(&serv_addr,sizeof(serv_addr));


    serv_addr.sin_family=AF_INET;
    serv_addr.sin_port=htons(SERV_PORT);
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);

    if(lfd == -1)
    {
        perror("socket error");
    }

    bind(lfd,(struct sockaddr *)(&serv_addr),sizeof(serv_addr));
    listen(lfd,128);



    fd_set rset,allset;     //定义 读集合和备份集合
    FD_ZERO(&allset);       //清空集合
    FD_SET(lfd,&allset);    //将待监听fd加入集合

    int ret,maxfd=0;
    maxfd=lfd;              //最大文件描述符
    while(1)
    {
        rset=allset;           //备份
        ret = select(maxfd+1,&rset,NULL,NULL,0);//使用select进行监听
        if(ret<0)
        {
            perror("select error");
        }

        if (FD_ISSET(lfd,&rset))                //满足lsd 读事件
        {
            client_addr_len=sizeof(client_addr);
            cfd = accept(lfd,(struct sockaddr *)(&client_addr),&client_addr_len);//与客户端建立连接--不会阻塞

            FD_SET(cfd,&allset);                  //将新产生得fd,添加到监听集合中,监听数据的读事件
            if(maxfd<cfd)                          //修改最大fd
            {maxfd=cfd;}                            

            if (ret==1)//说明select只返回一个,并且是lfd,后续无需执行
            {
                continue;//连接的读事件
            }
        }
        for (size_t i = lfd+1; i <= maxfd; i++)     //处理满足读事件的fd
        {
            if (FD_ISSET(i,&rset))                  //找到满足读事件的fd
            {
                int n=read(i,buf,sizeof(buf));      
                if (n==0)                           //检测到客户端已经关闭连接了
                {
                    close(i);
                    FD_CLR(i,&allset);              //将关闭的fd移除监听集合
                }else if(n==-1)
                {
                    perror("read error");
                }
                for (size_t j = 0; j < n; j++)
                {
                    buf[j]=toupper(buf[j]);
                }
                write(i,buf,n);
                write(STDOUT_FILENO,buf,n);
                
            }
            
        }
        
    }    
    close(lfd);
    // close(cfd);
    return 0;
}
