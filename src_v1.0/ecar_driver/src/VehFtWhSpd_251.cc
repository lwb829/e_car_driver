#include "ecar_driver/VehFtWhlSpd_251.hpp"

int32_t VehFtWhlSpd251::ID = 0x251;

VehFtWhlSpd251::VehFtWhlSpd251()
{
  cdcu_veh_ltft_whlspeed=0.0;
  cdcu_veh_rtft_whlspeed=0.0;
  cdcu_veh_ltft_whlspeed_valid=0;
  cdcu_veh_rtft_whlspeed_valid=0; 
}


void VehFtWhlSpd251::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void VehFtWhlSpd251::Parse()
{
  cdcu_veh_ltft_whlspeed = decode_cdcu_veh_ltft_whlspeed();
  cdcu_veh_rtft_whlspeed = decode_cdcu_veh_rtft_whlspeed();
  cdcu_veh_ltft_whlspeed_valid = decode_cdcu_veh_ltft_whlspeed_valid();
  cdcu_veh_rtft_whlspeed_valid = decode_cdcu_veh_rtft_whlspeed_valid();
}

double VehFtWhlSpd251::decode_cdcu_veh_ltft_whlspeed() 
{
  Byte t0(*(bytes + 1));
  int32_t x = t0.get_byte(0, 8);

  Byte t1(*(bytes + 0));
  int32_t t = t1.get_byte(0, 8);
  t <<= 8;
  x |= t;

  double ret = x * 0.01;
  // std::cout<<"前轮速度:"<<ret<<std::endl;
  return ret;
}


double VehFtWhlSpd251::decode_cdcu_veh_rtft_whlspeed() 
{
  Byte t0(*(bytes + 3));
  int32_t x = t0.get_byte(0, 8);

  Byte t1(*(bytes + 2));
  int32_t t = t1.get_byte(0, 8);
  t <<= 8;
  x |= t;

  double ret =  static_cast<double>(x);
  ret=ret*0.01;
  return ret;
}


bool VehFtWhlSpd251::decode_cdcu_veh_ltft_whlspeed_valid() 
{
  Byte t0(*(bytes + 6));
  int32_t x = t0.get_byte(1, 1);



  bool ret =  static_cast<bool>(x);
  return ret;
}


bool VehFtWhlSpd251::decode_cdcu_veh_rtft_whlspeed_valid()
 {
  Byte t0(*(bytes + 6));
  int32_t x = t0.get_byte(0, 1);



  bool ret =  static_cast<bool>(x);
  return ret;
}
