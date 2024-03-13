#pragma once

#include "Byte.hpp"

class ADCUBrakeCmd111
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUBrakeCmd111();

    void UpdateData(int Brk_Active, int Brk_CtrlMode, double Brk_TgtPedpos, double Brk_TgtPress, double Brk_TgtAccSpd, int BrkCmd_RollCnt, int BrkCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_Brk_Active(int Brk_Active); // 行车制动控制激活

    // 起始字节：0；起始位：5；信号长度：2；
    void set_e_Brk_CtrlMode(int Brk_CtrlMode); // 制动控制模式选择

    // 起始字节：1；起始位：8；信号长度：8；精度：0.4；
    void set_e_Brk_TgtPedpos(double Brk_TgtPedpos); // 目标制动踏板开度

    // 起始字节：3；起始位：24；信号长度：16；精度：0.01
    void set_e_Brk_TgtPress(double Brk_TgtPress); // 目标制动压力

    // 起始字节：5；起始位：40；信号长度：16；精度：0.01；偏移量：-20
    void set_e_Brk_TgtAccSpd(double Brk_TgtAccSpd); // 目标制动减速度

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_BrkCmd_RollCnt(int BrkCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_BrkCmd_Checksum(int BrkCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};
