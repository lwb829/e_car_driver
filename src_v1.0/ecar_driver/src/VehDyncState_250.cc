#include "ecar_driver/VehDyncState_250.hpp"

int32_t VehDyncState250::ID = 0x250;

VehDyncState250::VehDyncState250()
{
  cdcu_veh_longtdnal_speed=0.0;
  cdcu_veh_longtdnal_acc_speed=0.0;
  cdcu_veh_curvture=0.0;
  cdcu_veh_run_directon=0; 
}


void VehDyncState250::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void VehDyncState250::Parse()
{
  cdcu_veh_longtdnal_speed = decode_cdcu_veh_longtdnal_speed();
  cdcu_veh_longtdnal_acc_speed = decode_cdcu_veh_longtdnal_acc_speed();
  cdcu_veh_curvture = decode_cdcu_veh_curvture();
  cdcu_veh_run_directon = decode_cdcu_veh_run_directon();
}

double VehDyncState250::decode_cdcu_veh_longtdnal_speed() 
{
  Byte t0(*(bytes + 3));
  int32_t x = t0.get_byte(0, 8);

  Byte t1(*(bytes + 4));
  int32_t t = t1.get_byte(0, 8);
  x <<= 8;
  x |= t;
  double ret = x * 1/256;

  //低8位
  Byte t01(*(bytes + 3));
  int32_t k = t01.get_byte(0, 8);
  //高8位
  Byte t11(*(bytes + 2));
  int32_t t_1 = t11.get_byte(0, 8);
  t_1<<= 8;
  k |= t_1;

  double ret1 = k * 1/256;//单位：km/h
  // std::cout<<"ret="<<ret<<"km/h, ret1="<<ret1<<"km/h"<<std::endl;

  return ret1;
}


double VehDyncState250::decode_cdcu_veh_longtdnal_acc_speed() 
{
  //低8位
  Byte t0(*(bytes + 1));
  int32_t x = t0.get_byte(0, 8);
  //高8位
  Byte t1(*(bytes + 0));
  int32_t t = t1.get_byte(0, 8);
  t <<= 8;
  x |= t;

  double ret =  static_cast<double>(x);
  ret=ret*0.01-40;
  // std::cout<<"加速度:"<<ret<<std::endl;
  return ret;
}


double VehDyncState250::decode_cdcu_veh_curvture() {
  Byte t0(*(bytes + 5));
  int32_t x = t0.get_byte(0, 8);

  Byte t1(*(bytes + 4));
  int32_t t = t1.get_byte(0, 8);
  t <<= 8;
  x |= t;

  double ret =  static_cast<double>(x);
  ret=ret*0.0001-3;
  // std::cout<<"曲率:"<<ret<<std::endl;
  return ret;
}


int VehDyncState250::decode_cdcu_veh_run_directon()
 {
  Byte t0(*(bytes + 6));
  int32_t x = t0.get_byte(6, 2);

  int ret =  static_cast<int>(x);
  return ret;
}
