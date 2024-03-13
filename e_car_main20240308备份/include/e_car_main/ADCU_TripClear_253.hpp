#pragma once

#include "Byte.hpp"

class ADCUTripClear253
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUTripClear253();

    void UpdateData(int TotalTripClear_Cmd, int RmtDrvTripClear_Cmd, int AutoDrvTripClear_Cmd, int CldDrvTripClear_Cmd, int TripClear_RollCnt, int TripClear_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_TotalTripClear_Cmd(int TotalTripClear_Cmd); // 消除总小计里程

    // 起始字节：0；起始位：6；信号长度：1；
    void set_e_RmtDrvTripClear_Cmd(int RmtDrvTripClear_Cmd); // 消除遥控模式小计里程

    // 起始字节：0；起始位：5；信号长度：1；
    void set_e_AutoDrvTripClear_Cmd(int AutoDrvTripClear_Cmd); // 消除自动驾驶小计里程

    // 起始字节：0；起始位：4；信号长度：1；
    void set_e_CldDrvTripClear_Cmd(int CldDrvTripClear_Cmd); // 消除远程驾驶小计里程

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_TripClear_RollCnt(int TripClear_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_TripClear_Checksum(int TripClear_Checksum); // 校验和

private:
    uint8_t data[8];
};
