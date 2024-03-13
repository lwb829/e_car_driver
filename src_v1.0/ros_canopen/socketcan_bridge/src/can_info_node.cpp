// #include <can_msgs/Frame.h>
#include <ecar_driver_msgs/CANInfo.h>
#include <ecar_driver_msgs/CDCU_VehDyncState.h>
#include <ecar_driver_msgs/CDCU_BrakeStatus.h>
#include <ecar_driver_msgs/CDCU_DriveStatus.h>
#include <ros/ros.h>


int driveshift_ = 0;
float speed_ = 0;
float drivepedal_ = 0;
float brakepedal_ = 0;
bool is_brake_ok_ = false;
bool is_shift_ok_ = false;
bool is_throttle_ok_ = false;
bool is_speed_ok_ = false;

//速度回调
void SpeedReportCallBack(ecar_driver_msgs::CDCU_VehDyncState msg)
{
    speed_ = msg.cdcu_veh_longtdnal_speed;
    is_speed_ok_ = true;
}

//刹车回调
void BrakeCallBack(ecar_driver_msgs::CDCU_BrakeStatus msg)
{
    brakepedal_ = msg.CDCU_EHB_BrkPedpos;
    is_brake_ok_ = true;
}

//档位、油门回调函数
void DriveStatusCallBack(ecar_driver_msgs::CDCU_DriveStatus msg)
{
    //档位
    if (msg.CDCU_MCU_ErrLevel!=0)
        {driveshift_= -1;
        std::cout<<"driveshift status is error!"<<std::endl;}
    else if(msg.CDCU_MCU_GearAct==0)
        {is_shift_ok_ = true;
        driveshift_ = 0;}
    else if(msg.CDCU_MCU_GearAct==1)
        {driveshift_ = 1;
        is_shift_ok_ = true;}
    else if (msg.CDCU_MCU_GearAct==2)
        {driveshift_ = 2;
        is_shift_ok_ = true;}
    else if(msg.CDCU_MCU_GearAct==3)
       {driveshift_ = 3;
        is_shift_ok_ = true;}
    else{
        std::cout<<"driveshift status is error!"<<std::endl;}
    
    //油门
    drivepedal_ = msg.CDCU_MCU_ThrotAct;
    is_throttle_ok_ = true;

}

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "caninfo");

  ros::NodeHandle nh("");

//   std::string can_device;
//   nh_param.param<std::string>("can_device", can_device, "can0");

  ros::Subscriber sub_Speed = nh.subscribe("/vel_spd", 10, SpeedReportCallBack);
  ros::Subscriber sub_Brake = nh.subscribe("/brake_report", 10, BrakeCallBack);
  ros::Subscriber sub_DriveStatus = nh.subscribe("/drive_report", 10, DriveStatusCallBack);
  ros::Publisher can_info_pub = nh.advertise<ecar_driver_msgs::CANInfo>("can_info", 10);
//   can::ThreadedSocketCANInterfaceSharedPtr driver = std::make_shared<can::ThreadedSocketCANInterface> ();

  // initialize device at can_device, 0 for no loopback.
  ros::Rate r(10);
  while (ros::ok())
  {
    // can_msg
    if(is_brake_ok_&&is_shift_ok_&&is_throttle_ok_&&is_speed_ok_)
    {
        is_brake_ok_ = false;
        is_shift_ok_ = false;
        is_throttle_ok_ = false;
        is_speed_ok_ = false;
        ecar_driver_msgs::CANInfo can_msg;
        can_msg.devmode = 1;
        can_msg.strmode = 1;
        can_msg.driveshift = driveshift_;
        can_msg.speed = speed_;
        can_msg.drivepedal = drivepedal_;
        can_msg.brakepedal = brakepedal_;
        can_msg.light = 0;
        can_info_pub.publish(can_msg);
        std::cout<<"CAN INFO publish successfully!"<<std::endl;
    }
    else
    {
        std::cout<<"some status is error"<<std::endl;
        std::cout<<"brake is "<< is_brake_ok_ <<std::endl;
        std::cout<<"throttle is "<<is_throttle_ok_ <<std::endl;
        std::cout<<"speed is "<< is_speed_ok_ <<std::endl;
        std::cout<<"shift is "<< is_shift_ok_ <<std::endl;
    }
    ros::spinOnce();
    r.sleep();
  }
  
  
//   return 0
}