#pragma once
#include <iostream>
#include "Byte.hpp"

class SweepStatus291
{
 public:
  static int32_t ID;
  SweepStatus291();
  void Parse();
  void update_bytes(uint8_t bytes_data[8]);


  int cdcu_sweep_mode;
  int cdcu_sweep_sys_st;
  int cdcu_sweep_Estop_st;
  int cdcu_shake_dust_st;
  int cdcu_dstb_pos_st;
  int cdcu_FtBrushStretch_St;
  int CDCU_FtBrushDrop_St;
  int CDCU_RrBrushDrop_St;
  int CDCU_MainBrush_St;
  int CDCU_FtBrushMtr_St;
  int CDCU_RrBrushMtr_St;
  int CDCU_MainBrushMtr_St;
  int CDCU_CtfgFan_St;
  int CDCU_FtFender_St;
  int CDCU_BrushWtrVal_St;
  int CDCU_Remain_Water;

 private:
  uint8_t bytes[8];

  
  int decode_cdcu_sweep_mode();

  int decode_cdcu_sweep_sys_st();

  int decode_cdcu_sweep_Estop_st();

  int decode_cdcu_shake_dust_st();


  int decode_cdcu_dstb_pos_st();
  int decode_cdcu_FtBrushStretch_St();
  int decode_CDCU_FtBrushDrop_St();
  int decode_CDCU_RrBrushDrop_St();
  int decode_CDCU_MainBrush_St();
  int decode_CDCU_FtBrushMtr_St();
  int decode_CDCU_RrBrushMtr_St();
  int decode_CDCU_MainBrushMtr_St();
  int decode_CDCU_CtfgFan_St();
  int decode_CDCU_FtFender_St();
  int decode_CDCU_BrushWtrVal_St();
  double decode_CDCU_Remain_Water();
};

