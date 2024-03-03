#pragma once

#include "Byte.hpp"

class ADCUPowerCmd117
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUPowerCmd117();

    void UpdateData(int ADVehPwrup_Cmd, int ADChasPwrup_Cmd, int AD12VMCPwrup_Cmd, int AD12VRCPwrup_Cmd, int AD24VMCPwrup_Cmd, int ADPA12VPwrup_Cmd, int ADPA24VPwrup_Cmd, int AD12VSC1Pwrup_Cmd, int AD12VSC2Pwrup_Cmd, int AD12VSC3Pwrup_Cmd, int AD12VSC4Pwrup_Cmd, int AD12VSC5Pwrup_Cmd, int AD12VSC6Pwrup_Cmd, int AD12VMCPwrdownCnfm_Cmd, int AD12VRCPwrdownCnfm_Cmd, int AD24VMCPwrdownCnfm_Cmd, int ADPA12VPwrdownCnfm_Cmd, int ADPA24VPwrdwnCnfm_Cmd, int PwrCmd_RollCnt, int PwrCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：6；信号长度：2；
    void set_e_ADVehPwrup_Cmd(int ADVehPwrup_Cmd); // 自动驾驶总电源上下电指令

    // 起始字节：0；起始位：4；信号长度：2；
    void set_e_ADChasPwrup_Cmd(int ADChasPwrup_Cmd); // 自动驾驶底盘上下电指令

    // 起始字节：0；起始位：2；信号长度：2；
    void set_e_AD12VMCPwrup_Cmd(int AD12VMCPwrup_Cmd); // 自动驾驶12V上下电指令（自动驾驶主路）

    // 起始字节：0；起始位：0；信号长度：2；
    void set_e_AD12VRCPwrup_Cmd(int AD12VRCPwrup_Cmd); // 自动驾驶12V上下电指令（预留）

    // 起始字节：1；起始位：14；信号长度：2；
    void set_e_AD24VMCPwrup_Cmd(int AD24VMCPwrup_Cmd); // 自动驾驶24V上下电指令

    // 起始字节：1；起始位：12；信号长度：2；
    void set_e_ADPA12VPwrup_Cmd(int ADPA12VPwrup_Cmd); // 自动驾驶警务12V上下电指令（预留）

    // 起始字节：1；起始位：10；信号长度：2；
    void set_e_ADPA24VPwrup_Cmd(int ADPA24VPwrup_Cmd); // 自动驾驶警务24V上下电指令（预留）

    // 起始字节：1；起始位：8；信号长度：2；
    void set_e_AD12VSC1Pwrup_Cmd(int AD12VSC1Pwrup_Cmd); // 自动驾驶支路12V_1上下电指令

    // 起始字节：2；起始位：22；信号长度：2；
    void set_e_AD12VSC2Pwrup_Cmd(int AD12VSC2Pwrup_Cmd); // 自动驾驶支路12V_2上下电指令

    // 起始字节：2；起始位：20；信号长度：2；
    void set_e_AD12VSC3Pwrup_Cmd(int AD12VSC3Pwrup_Cmd); // 自动驾驶支路12V_3上下电指令

    // 起始字节：2；起始位：18；信号长度：2；
    void set_e_AD12VSC4Pwrup_Cmd(int AD12VSC4Pwrup_Cmd); // 自动驾驶支路12V_4上下电指令

    // 起始字节：2；起始位：16；信号长度：2；
    void set_e_AD12VSC5Pwrup_Cmd(int AD12VSC5Pwrup_Cmd); // 自动驾驶支路12V_5上下电指令

    // 起始字节：3；起始位：30；信号长度：2；
    void set_e_AD12VSC6Pwrup_Cmd(int AD12VSC6Pwrup_Cmd); // 自动驾驶支路12V_6上下电指令

    // 起始字节：4；起始位：39；信号长度：1；
    void set_e_AD12VMCPwrdownCnfm_Cmd(int AD12VMCPwrdownCnfm_Cmd); // 自动驾驶12V供电关闭确认（自动驾驶主路）

    // 起始字节：4；起始位：38；信号长度：1；
    void set_e_AD12VRCPwrdownCnfm_Cmd(int AD12VRCPwrdownCnfm_Cmd); // 自动驾驶12V供电关闭确认（预留）

    // 起始字节：4；起始位：37；信号长度：1；
    void set_e_AD24VMCPwrdownCnfm_Cmd(int AD24VMCPwrdownCnfm_Cmd); // 自动驾驶24V供电关闭确认

    // 起始字节：4；起始位：36；信号长度：1；
    void set_e_ADPA12VPwrdownCnfm_Cmd(int ADPA12VPwrdownCnfm_Cmd); // 自动驾驶警务12V供电关闭确认（预留）

    // 起始字节：4；起始位：35；信号长度：1；
    void set_e_ADPA24VPwrdwnCnfm_Cmd(int ADPA24VPwrdwnCnfm_Cmd); // 自动驾驶警务24V供电关闭确认（预留）

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_PwrCmd_RollCnt(int PwrCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_PwrCmd_Checksum(int PwrCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};