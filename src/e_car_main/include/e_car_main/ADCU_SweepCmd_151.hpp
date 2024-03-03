#pragma once

#include "Byte.hpp"

class ADCUSweepCmd151
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUSweepCmd151();

    void UpdateData(int Tgt_SweepMode, int Sweep_Cmd, int ShakeDust_Cmd, int GbgDump_Cmd, int FtFenderCtrl_Cmd, int SweepEStop_Cmd, int BrushWtrValFbd_Cmd, int SweepCmd_RollCnt, int SweepCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();
 
private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_Tgt_SweepMode(int Tgt_SweepMode); // 目标清扫模式

    // 起始字节：0；起始位：6；信号长度：1；
    void set_e_Sweep_Cmd(int Sweep_Cmd); // 清扫指令

    // 起始字节：0；起始位：5；信号长度：1；
    void set_e_ShakeDust_Cmd(int ShakeDust_Cmd); // 震尘指令

    // 起始字节：0；起始位：4；信号长度：1；
    void set_e_GbgDump_Cmd(int GbgDump_Cmd); // 垃圾倾倒指令

    // 起始字节：0；起始位：3；信号长度：1；
    void set_e_FtFenderCtrl_Cmd(int FtFenderCtrl_Cmd); // 主刷前挡板打开指令

    // 起始字节：0；起始位：0；信号长度：1；
    void set_e_SweepEStop_Cmd(int SweepEStop_Cmd); // 清扫系统急停指令

    // 起始字节：1；起始位：15；信号长度：1；
    void set_e_BrushWtrValFbd_Cmd(int BrushWtrValFbd_Cmd); // 边刷喷水阀禁止开启控制指令

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_SweepCmd_RollCnt(int SweepCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_SweepCmd_Checksum(int SweepCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};
