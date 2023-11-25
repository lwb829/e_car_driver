#pragma once

#include "Byte.hpp"

class ADCUCldDrvCmd118
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUCldDrvCmd118();

    void UpdateData(int Cld_CtrlActive, int Cld_PrkEnable, int Cld_DriveMode, int Cld_TgtGear, double Cld_TgtThrotVal, double Cld_TgtBrkVal, double Cld_TgtStrAngle, int CldDrvCmd_RollCnt, int CldDrvCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_Cld_CtrlActive(int Cld_CtrlActive); // 远程行驶控制激活

    // 起始字节：0；起始位：6；信号长度：1；
    void set_e_Cld_PrkEnable(int Cld_PrkEnable); // 远程驾驶驻车使能

    // 起始字节：0；起始位：4；信号长度：2；
    void set_e_Cld_DriveMode(int Cld_DriveMode); // 远程驾驶驱动控制模式选择

    // 起始字节：0；起始位：0；信号长度：4；
    void set_e_Cld_TgtGear(int Cld_TgtGear); // 远程驾驶目标档位

    // 起始字节：1；起始位：8；信号长度：8；精度：0.4；
    void set_e_Cld_TgtThrotVal(double Cld_TgtThrotVal); // 远程驾驶目标驱动量

    // 起始字节：2；起始位：16；信号长度：8；精度：0.4；
    void set_e_Cld_TgtBrkVal(double Cld_TgtBrkVal); // 远程驾驶目标制动量

    // 起始字节：4；起始位：32；信号长度：16；精度：0.1；偏移量：-1000；
    void set_e_Cld_TgtStrAngle(double Cld_TgtStrAngle); // 远程驾驶目标控制前轮转角

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_CldDrvCmd_RollCnt(int CldDrvCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_CldDrvCmd_Checksum(int CldDrvCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};
