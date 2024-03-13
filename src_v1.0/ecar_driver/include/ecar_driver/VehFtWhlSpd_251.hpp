#pragma once
#include <iostream>
#include "Byte.hpp"

class VehFtWhlSpd251
{
 public:
  static int32_t ID;
  VehFtWhlSpd251();
  void Parse();
  void update_bytes(uint8_t bytes_data[8]);


  double cdcu_veh_ltft_whlspeed;
  double cdcu_veh_rtft_whlspeed;
  bool cdcu_veh_ltft_whlspeed_valid;
  bool cdcu_veh_rtft_whlspeed_valid; 

 private:
  uint8_t bytes[8];

  
  double decode_cdcu_veh_ltft_whlspeed();

  double decode_cdcu_veh_rtft_whlspeed();

  bool decode_cdcu_veh_ltft_whlspeed_valid();

  bool decode_cdcu_veh_rtft_whlspeed_valid();
};

