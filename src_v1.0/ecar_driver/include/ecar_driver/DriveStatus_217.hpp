#pragma once
#include <iostream>
#include "Byte.hpp"

class DriveStatus217
{
 public:
  static int32_t ID;
  DriveStatus217();
  void Parse();
  void update_bytes(uint8_t bytes_data[8]);


int cdcu_MCU_WorkMode;
int cdcu_MCU_GearAct;
int cdcu_MCU_RunDir;
double cdcu_MCU_ThrotAct;
int cdcu_MCU_ErrLevel;

 private:
  uint8_t bytes[8];

  
  int decode_cdcu_MCU_WorkMode();

  int decode_cdcu_MCU_GearAct();

  int decode_cdcu_MCU_RunDir();

  double decode_cdcu_MCU_ThrotAct();

  int decode_cdcu_MCU_ErrLevel();
};

