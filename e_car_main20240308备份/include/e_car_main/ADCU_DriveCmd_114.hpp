#pragma once

#include "Byte.hpp"

class ADCUDriveCmd114
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUDriveCmd114();

    void UpdateData(int Drv_Active, int Drv_CtrlMode, int Drv_TgtGear, int Drv_TgtPedpos, double Drv_TgtVehSpd0, int DrvCmd0_RollCnt, int DrvCmd0_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_Drv_Active(int Drv_Active); // 驱动控制激活

    // 起始字节：0；起始位：5；信号长度：2；
    void set_e_Drv_CtrlMode(int Drv_CtrlMode); // 驱动控制模式选择

    // 起始字节：0；起始位：0；信号长度：2；
    void set_e_Drv_TgtGear(int Drv_TgtGear); // 目标挡位

    // 起始字节：1；起始位：8；信号长度：8；偏移量：-100
    void set_e_Drv_TgtPedpos(int Drv_TgtPedpos); // 目标油门大小

    // 起始字节：3；起始位：24；信号长度：16；精度：0.01；偏移量：-100
    void set_e_Drv_TgtVehSpd0(double Drv_TgtVehSpd0); // 当前目标车速V0

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_DrvCmd0_RollCnt(int DrvCmd0_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_DrvCmd0_Checksum(int DrvCmd0_Checksum); // 校验和

private:
    uint8_t data[8];
};
