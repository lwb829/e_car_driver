#pragma once

#include "Byte.hpp"

class ADCUSteerCmd113
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUSteerCmd113();

    void UpdateData(int Str_Active, int Str_CtrlMode, double Str_TgtAngle, double Str_TgtAngleSpd, int StrCmd_RollCnt, int StrCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_Str_Active(int Str_Active); // 转向控制激活

    // 起始字节：0；起始位：5；信号长度：2；
    void set_e_Str_CtrlMode(int Str_CtrlMode); // 转向控制模式

    // 起始字节：2；起始位：16；信号长度：16；精度：0.005；偏移量：-90；
    void set_e_Str_TgtAngle(double Str_TgtAngle); // 目标前轮转角

    // 起始字节：5；起始位：40；信号长度：8；精度：0.2；
    void set_e_Str_TgtAngleSpd(double Str_TgtAngleSpd); // 目标转向角速度

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_StrCmd_RollCnt(int StrCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_StrCmd_Checksum(int StrCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};
