#include "ros/ros.h"
#include "actionlib/server/simple_action_server.h"
#include "demo01_action/AddintsAction.h"


typedef actionlib::SimpleActionServer<demo01_action::AddintsAction> server;

void cb(const demo01_action::AddintsGoalConstPtr &goalPtr,server* server)
{
    int goal_num= goalPtr->num;
    ROS_INFO_STREAM("客户端提交的目标值为: " <<goal_num );
    
    ros::Rate rate(10);
    int result=0;
    for(size_t i=1;i<goal_num;i++)
    {
        result +=i;
        rate.sleep();
        //const demo01_action::AddintsFeedback &feedback
        demo01_action::AddintsFeedback fb;
        fb.progress_bar = i / (double)goal_num;
        server->publishFeedback(fb);
    }
    demo01_action::AddintsResult r;
    r.result = result;
    server->setSucceeded(r);
    
}

int main(int argc, char *argv[])
{
    /* code */
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"addints_server");
    ros::NodeHandle nh;

    server server(nh,"addints",boost::bind(&cb,_1,&server),false);
    server.start();//如果auto_start为flase手动调用该函数
    ROS_INFO("服务启动");
  
// SimpleActionServer(ros::NodeHandle n, 
// std::__cxx11::string name, 
// boost::function<void (const demo01_action::AddintsGoalConstPtr &)> execute_callback,
//  bool auto_start)
//参数1:nh
//参数2:话题名称
//参数3:回调函数
//参数4:是否自动启动
    ros::spin();
    return 0;
}
