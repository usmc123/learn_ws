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

    serv_addr.sin_family=AF_INET;
    serv_addr.sin_port=htons(SERV_PORT);
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);

    
    if(lfd == -1)
    {
        perror("socket error");
    }

    bind(lfd,(struct sockaddr *)(&serv_addr),sizeof(serv_addr));
   
    listen(lfd,128);
    client_addr_len=sizeof(client_addr);
    cfd = accept(lfd,(struct sockaddr *)&client_addr,&client_addr_len);
     printf("client ip is %s,port = %d\n"
            ,inet_ntop(AF_INET,&client_addr.sin_addr.s_addr,client_ip,sizeof(client_ip))
            ,ntohs(client_addr.sin_port));
    if(cfd==-1)
    {
        perror("accept error");
    }



    while(1)
    {
        int ret = read(cfd,buf,sizeof(buf));
        write(STDOUT_FILENO,buf,ret);
        for(int i=0;i<ret;i++)
        {
            buf[i]=toupper(buf[i]);
        }
        write(cfd,buf,ret);
    }
    close(lfd);
    close(cfd);
    return 0;
}
