#pragma once

#include "Byte.hpp"

class ADCUCldPowerCmd11A
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUCldPowerCmd11A();

    void UpdateData(int CldVehPwrup_Cmd, int CldChasPwrup_Cmd, int Cld12VMCPwrup_Cmd, int Cld12VRCPwrup_Cmd, int Cld24VMCPwrup_Cmd, int CldPA12VPwrup_Cmd, int CldPA24VPwrup_Cmd, int Cld12VSC1Pwrup_Cmd, int Cld12VSC2Pwrup_Cmd, int Cld12VSC3Pwrup_Cmd, int Cld12VSC4Pwrup_Cmd, int Cld12VSC5Pwrup_Cmd, int Cld12VSC6Pwrup_Cmd, int Cld12VMCPwrdownCnfm_Cmd, int Cld12VRCPwrdownCnfm_Cmd, int Cld24VMCPwrdownCnfm_Cmd, int CldPA12VPwrdownCnfm_Cmd, int CldPA24VPwrdownCnfm_Cmd, int CldPwrCmd_RollCnt, int CldPwrCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：6；信号长度：2；
    void set_e_CldVehPwrup_Cmd(int CldVehPwrup_Cmd); // 远程驾驶总电源上下电指令

    // 起始字节：0；起始位：4；信号长度：2；
    void set_e_CldChasPwrup_Cmd(int CldChasPwrup_Cmd); // 远程驾驶底盘上下电指令

    // 起始字节：0；起始位：2；信号长度：2；
    void set_e_Cld12VMCPwrup_Cmd(int Cld12VMCPwrup_Cmd); // 远程驾驶12V上下电指令（远程驾驶主路）

    // 起始字节：0；起始位：0；信号长度：2；
    void set_e_Cld12VRCPwrup_Cmd(int Cld12VRCPwrup_Cmd); // 远程驾驶12V上下电指令（预留）

    // 起始字节：1；起始位：14；信号长度：2；
    void set_e_Cld24VMCPwrup_Cmd(int Cld24VMCPwrup_Cmd); // 远程驾驶24V上下电指令

    // 起始字节：1；起始位：12；信号长度：2；
    void set_e_CldPA12VPwrup_Cmd(int CldPA12VPwrup_Cmd); // 远程驾驶警务12V上下电指令（预留）

    // 起始字节：1；起始位：10；信号长度：2；
    void set_e_CldPA24VPwrup_Cmd(int CldPA24VPwrup_Cmd); // 远程驾驶警务24V上下电指令（预留）

    // 起始字节：1；起始位：8；信号长度：2；
    void set_e_Cld12VSC1Pwrup_Cmd(int Cld12VSC1Pwrup_Cmd); // 远程驾驶支路12V_1上下电指令

    // 起始字节：2；起始位：22；信号长度：2；
    void set_e_Cld12VSC2Pwrup_Cmd(int Cld12VSC2Pwrup_Cmd); // 远程驾驶支路12V_2上下电指令

    // 起始字节：2；起始位：20；信号长度：2；
    void set_e_Cld12VSC3Pwrup_Cmd(int Cld12VSC3Pwrup_Cmd); // 远程驾驶支路12V_3上下电指令

    // 起始字节：2；起始位：18；信号长度：2；
    void set_e_Cld12VSC4Pwrup_Cmd(int Cld12VSC4Pwrup_Cmd); // 远程驾驶支路12V_4上下电指令

    // 起始字节：2；起始位：16；信号长度：2；
    void set_e_Cld12VSC5Pwrup_Cmd(int Cld12VSC5Pwrup_Cmd); // 远程驾驶支路12V_5上下电指令

    // 起始字节：3；起始位：30；信号长度：2；
    void set_e_Cld12VSC6Pwrup_Cmd(int Cld12VSC6Pwrup_Cmd); // 远程驾驶支路12V_6上下电指令

    // 起始字节：4；起始位：39；信号长度：1；
    void set_e_Cld12VMCPwrdownCnfm_Cmd(int Cld12VMCPwrdownCnfm_Cmd); // 远程驾驶12V供电关闭确认（远程驾驶主路）

    // 起始字节：4；起始位：38；信号长度：1；
    void set_e_Cld12VRCPwrdownCnfm_Cmd(int Cld12VRCPwrdownCnfm_Cmd); // 远程驾驶12V供电关闭确认（预留）

    // 起始字节：4；起始位：37；信号长度：1；
    void set_e_Cld24VMCPwrdownCnfm_Cmd(int Cld24VMCPwrdownCnfm_Cmd); // 远程驾驶24V供电关闭确认

    // 起始字节：4；起始位：36；信号长度：1；
    void set_e_CldPA12VPwrdownCnfm_Cmd(int CldPA12VPwrdownCnfm_Cmd); // 远程驾驶警务12V供电关闭确认（预留）

    // 起始字节：4；起始位：35；信号长度：1；
    void set_e_CldPA24VPwrdownCnfm_Cmd(int CldPA24VPwrdownCnfm_Cmd); // 远程驾驶警务24V供电关闭确认（预留）

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_CldPwrCmd_RollCnt(int CldPwrCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_CldPwrCmd_Checksum(int CldPwrCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};