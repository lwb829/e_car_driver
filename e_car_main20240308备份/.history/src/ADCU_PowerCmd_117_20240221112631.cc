#include "e_car_main/ADCU_PowerCmd_117.hpp"

int32_t ADCUPowerCmd117::ID = 0x117;

// public
ADCUPowerCmd117::ADCUPowerCmd117() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUPowerCmd117::UpdateData(int ADVehPwrup_Cmd, int ADChasPwrup_Cmd, int AD12VMCPwrup_Cmd, int AD12VRCPwrup_Cmd, int AD24VMCPwrup_Cmd, int ADPA12VPwrup_Cmd, int ADPA24VPwrup_Cmd, int AD12VSC1Pwrup_Cmd, int AD12VSC2Pwrup_Cmd, int AD12VSC3Pwrup_Cmd, int AD12VSC4Pwrup_Cmd, int AD12VSC5Pwrup_Cmd, int AD12VSC6Pwrup_Cmd, int AD12VMCPwrdownCnfm_Cmd, int AD12VRCPwrdownCnfm_Cmd, int AD24VMCPwrdownCnfm_Cmd, int ADPA12VPwrdownCnfm_Cmd, int ADPA24VPwrdwnCnfm_Cmd, int PwrCmd_RollCnt, int PwrCmd_Checksum)
{
    set_e_ADVehPwrup_Cmd(ADVehPwrup_Cmd); 
    set_e_ADChasPwrup_Cmd(ADChasPwrup_Cmd); 
    set_e_AD12VMCPwrup_Cmd(AD12VMCPwrup_Cmd); 
    set_e_AD12VRCPwrup_Cmd(AD12VRCPwrup_Cmd); 
    set_e_AD24VMCPwrup_Cmd(AD24VMCPwrup_Cmd); 
    set_e_ADPA12VPwrup_Cmd(ADPA12VPwrup_Cmd); 
    set_e_ADPA24VPwrup_Cmd(ADPA24VPwrup_Cmd); 
    set_e_AD12VSC1Pwrup_Cmd(AD12VSC1Pwrup_Cmd); 
    set_e_AD12VSC2Pwrup_Cmd(AD12VSC2Pwrup_Cmd); 
    set_e_AD12VSC3Pwrup_Cmd(AD12VSC3Pwrup_Cmd); 
    set_e_AD12VSC4Pwrup_Cmd(AD12VSC4Pwrup_Cmd); 
    set_e_AD12VSC5Pwrup_Cmd(AD12VSC5Pwrup_Cmd); 
    set_e_AD12VSC6Pwrup_Cmd(AD12VSC6Pwrup_Cmd); 
    set_e_AD12VMCPwrdownCnfm_Cmd(AD12VMCPwrdownCnfm_Cmd); 
    set_e_AD12VRCPwrdownCnfm_Cmd(AD12VRCPwrdownCnfm_Cmd); 
    set_e_AD24VMCPwrdownCnfm_Cmd(AD24VMCPwrdownCnfm_Cmd); 
    set_e_ADPA12VPwrdownCnfm_Cmd(ADPA12VPwrdownCnfm_Cmd); 
    set_e_ADPA24VPwrdwnCnfm_Cmd(ADPA24VPwrdwnCnfm_Cmd); 
    set_e_PwrCmd_RollCnt(PwrCmd_RollCnt); 
    set_e_PwrCmd_Checksum(PwrCmd_Checksum); 
}

void ADCUPowerCmd117::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUPowerCmd117::get_data()
{
    return data;
}

// 起始字节：0；起始位：6；信号长度：2；
void ADCUPowerCmd117::set_e_ADVehPwrup_Cmd(int ADVehPwrup_Cmd)
{
    int x = ADVehPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：4；信号长度：2；
void ADCUPowerCmd117::set_e_ADChasPwrup_Cmd(int ADChasPwrup_Cmd)
{
    int x = ADChasPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：2；信号长度：2；
void ADCUPowerCmd117::set_e_AD12VMCPwrup_Cmd(int AD12VMCPwrup_Cmd)
{
    int x = AD12VMCPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：0；信号长度：2；
void ADCUPowerCmd117::set_e_AD12VRCPwrup_Cmd(int AD12VRCPwrup_Cmd)
{
    int x = AD12VRCPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：14；信号长度：2；
void ADCUPowerCmd117::set_e_AD24VMCPwrup_Cmd(int AD24VMCPwrup_Cmd)
{
    int x = AD24VMCPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：12；信号长度：2；
void ADCUPowerCmd117::set_e_ADPA12VPwrup_Cmd(int ADPA12VPwrup_Cmd)
{
    int x = ADPA12VPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：10；信号长度：2；
void ADCUPowerCmd117::set_e_ADPA24VPwrup_Cmd(int ADPA24VPwrup_Cmd)
{
    int x = ADPA24VPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：8；信号长度：2；
void ADCUPowerCmd117::set_e_AD12VSC1Pwrup_Cmd(int AD12VSC1Pwrup_Cmd)
{
    int x = AD12VSC1Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：2；起始位：22；信号长度：2；
void ADCUPowerCmd117::set_e_AD12VSC2Pwrup_Cmd(int AD12VSC2Pwrup_Cmd)
{
    int x = AD12VSC2Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：20；信号长度：2；
void ADCUPowerCmd117::set_e_AD12VSC3Pwrup_Cmd(int AD12VSC3Pwrup_Cmd)
{
    int x = AD12VSC3Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：18；信号长度：2；
void ADCUPowerCmd117::set_e_AD12VSC4Pwrup_Cmd(int AD12VSC4Pwrup_Cmd)
{
    int x = AD12VSC4Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：16；信号长度：2；
void ADCUPowerCmd117::set_e_AD12VSC5Pwrup_Cmd(int AD12VSC5Pwrup_Cmd)
{
    int x = AD12VSC5Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：3；起始位：30；信号长度：2；
void ADCUPowerCmd117::set_e_AD12VSC6Pwrup_Cmd(int AD12VSC6Pwrup_Cmd)
{
    int x = AD12VSC6Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[3] += to_set.return_byte_t();
}

// 起始字节：4；起始位：39；信号长度：1；
void ADCUPowerCmd117::set_e_AD12VMCPwrdownCnfm_Cmd(int AD12VMCPwrdownCnfm_Cmd)
{
    int x = AD12VMCPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：38；信号长度：1；
void ADCUPowerCmd117::set_e_AD12VRCPwrdownCnfm_Cmd(int AD12VRCPwrdownCnfm_Cmd)
{
    int x = AD12VRCPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：37；信号长度：1；
void ADCUPowerCmd117::set_e_AD24VMCPwrdownCnfm_Cmd(int AD24VMCPwrdownCnfm_Cmd)
{
    int x = AD24VMCPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：36；信号长度：1；
void ADCUPowerCmd117::set_e_ADPA12VPwrdownCnfm_Cmd(int ADPA12VPwrdownCnfm_Cmd)
{
    int x = ADPA12VPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：35；信号长度：1；
void ADCUPowerCmd117::set_e_ADPA24VPwrdwnCnfm_Cmd(int ADPA24VPwrdwnCnfm_Cmd)
{
    int x = ADPA24VPwrdwnCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 3, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUPowerCmd117::set_e_PwrCmd_RollCnt(int PwrCmd_RollCnt)
{
    int x = PwrCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUPowerCmd117::set_e_PwrCmd_Checksum(int PwrCmd_Checksum)
{
    int x = PwrCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
