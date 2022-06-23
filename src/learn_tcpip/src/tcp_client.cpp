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
    int count = 10;
    char buf[BUFSIZ]; 
    /* code */
    struct sockaddr_in server_addr;
    server_addr.sin_family=AF_INET;
    server_addr.sin_port= htons(SERV_PORT);
    inet_pton(AF_INET,"127.0.0.1",&server_addr.sin_addr.s_addr);
    
    int cfd = socket(AF_INET,SOCK_STREAM,0);
    if(cfd==-1)
    {
        perror("socket error");
    }

    int ret = connect(cfd,(struct sockaddr*)&server_addr,sizeof(server_addr));
    if(ret==-1)
    {
        perror("connect error");
    }
    
    while(count--)
    {
        write(cfd,"hello\n",6);
        ret=read(cfd,buf,sizeof(buf));
        write(STDOUT_FILENO,buf,ret);
        sleep(1);
    }
    close(cfd);
    return 0;
}
