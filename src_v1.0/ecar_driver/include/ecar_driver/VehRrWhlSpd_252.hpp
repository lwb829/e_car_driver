#pragma once
#include <iostream>
#include "Byte.hpp"

class VehRrWhlSpd252
{
 public:
  static int32_t ID;
  VehRrWhlSpd252();
  void Parse();
  void update_bytes(uint8_t bytes_data[8]);


  double cdcu_veh_lfrr_whlspeed;
  double cdcu_veh_rtrr_whlspeed;
  bool cdcu_veh_lfrr_whlspeed_valid;
  bool cdcu_veh_rtrr_whlspeed_valid; 

 private:
  uint8_t bytes[8];

  
  double decode_cdcu_veh_lfrr_whlspeed();

  double decode_cdcu_veh_rtrr_whlspeed();

  bool decode_cdcu_veh_lfrr_whlspeed_valid();

  bool decode_cdcu_veh_rtrr_whlspeed_valid();
};

