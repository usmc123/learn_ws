#include "ros/ros.h"
#include "actionlib/client/simple_action_client.h"
#include "demo01_action/AddintsAction.h"



//响应成功的回调函数

void done_cb(const actionlib::SimpleClientGoalState &state,
            const demo01_action::AddintsResultConstPtr &result) 
      {
          //响应状态是否成功
          if (state.state_ == state.SUCCEEDED)
          {
              ROS_INFO("响应成功,最终结果=%d",result->result);
              /* code */
          }else{
              ROS_INFO("响应失败");
          }          
      }

      //激活回调
void active_cb()
{
    ROS_INFO_STREAM("客户端与服务端连接建立...");
}
      //连续反馈回调
void feedback_cb(const demo01_action::AddintsFeedbackConstPtr &feedback)
{
    ROS_INFO_STREAM("当前进度:"<<feedback->progress_bar);
}





int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"addints_client");
    ros::NodeHandle nh;


    actionlib::SimpleActionClient<demo01_action::AddintsAction> client(nh,"addints");

    //判断服务器状态
    ROS_INFO("等待服务端启动....");
    client.waitForServer();
    // void sendGoal(const demo01_action::AddintsGoal &goal, 
    //boost::function<void (const actionlib::SimpleClientGoalState &state,
    //  const demo01_action::AddintsResultConstPtr &result)> done_cb, 
    //  boost::function<void ()> active_cb = actionlib::SimpleActionClient<demo01_action::AddintsAction>::SimpleActiveCallback(), 
    //  boost::function<void (const demo01_action::AddintsFeedbackConstPtr &feedback)> feedback_cb = actionlib::SimpleActionClient<demo01_action::AddintsAction>::SimpleFeedbackCallback())
    //设置目标值
    demo01_action::AddintsGoal goal;
    goal.num = 100;
    client.sendGoal(goal,&done_cb,&active_cb,&feedback_cb);
    ros::spin();
    return 0;
}
