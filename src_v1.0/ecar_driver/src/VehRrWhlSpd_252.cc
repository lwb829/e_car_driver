#include "ecar_driver/VehRrWhlSpd_252.hpp"


int32_t VehRrWhlSpd252::ID = 0x252;

VehRrWhlSpd252::VehRrWhlSpd252()
{
  cdcu_veh_lfrr_whlspeed=0.0;
  cdcu_veh_rtrr_whlspeed=0.0;
  cdcu_veh_lfrr_whlspeed_valid=0;
  cdcu_veh_rtrr_whlspeed_valid=0; 
}


void VehRrWhlSpd252::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void VehRrWhlSpd252::Parse()
{
  cdcu_veh_lfrr_whlspeed = decode_cdcu_veh_lfrr_whlspeed();
  cdcu_veh_rtrr_whlspeed = decode_cdcu_veh_rtrr_whlspeed();
  cdcu_veh_lfrr_whlspeed_valid = decode_cdcu_veh_lfrr_whlspeed_valid();
  cdcu_veh_rtrr_whlspeed_valid = decode_cdcu_veh_rtrr_whlspeed_valid();
}

double VehRrWhlSpd252::decode_cdcu_veh_lfrr_whlspeed() 
{
  Byte t0(*(bytes + 1));
  int32_t x = t0.get_byte(0, 8);

  Byte t1(*(bytes + 0));
  int32_t t = t1.get_byte(0, 8);
  t <<= 8;
  x |= t;

  double ret = x * 0.01;
  return ret;
}


double VehRrWhlSpd252::decode_cdcu_veh_rtrr_whlspeed() 
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


bool VehRrWhlSpd252::decode_cdcu_veh_lfrr_whlspeed_valid() 
{
  Byte t0(*(bytes + 6));
  int32_t x = t0.get_byte(1, 1);



  bool ret =  static_cast<bool>(x);
  return ret;
}


bool VehRrWhlSpd252::decode_cdcu_veh_rtrr_whlspeed_valid()
 {
  Byte t0(*(bytes + 6));
  int32_t x = t0.get_byte(0, 1);



  bool ret =  static_cast<bool>(x);
  return ret;
}
