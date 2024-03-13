#pragma once
#include <iostream>
#include "Byte.hpp"

class VehDyncState250
{
 public:
  static int32_t ID;
  VehDyncState250();
  void Parse();
  void update_bytes(uint8_t bytes_data[8]);


  double cdcu_veh_longtdnal_speed;
  double cdcu_veh_longtdnal_acc_speed;
  double cdcu_veh_curvture;
  int cdcu_veh_run_directon; 

 private:
  uint8_t bytes[8];

  
  double decode_cdcu_veh_longtdnal_speed();

  double decode_cdcu_veh_longtdnal_acc_speed();

  double decode_cdcu_veh_curvture();

  int decode_cdcu_veh_run_directon();
};

