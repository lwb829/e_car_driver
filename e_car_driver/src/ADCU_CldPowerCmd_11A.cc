#include "ADCU_CldPowerCmd_11A.hpp"

int32_t ADCUCldPowerCmd11A::ID = 0x11A;

// public
ADCUCldPowerCmd11A::ADCUCldPowerCmd11A() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUCldPowerCmd11A::UpdateData(int CldVehPwrup_Cmd, int CldChasPwrup_Cmd, int Cld12VMCPwrup_Cmd, int Cld12VRCPwrup_Cmd, int Cld24VMCPwrup_Cmd, int CldPA12VPwrup_Cmd, int CldPA24VPwrup_Cmd, int Cld12VSC1Pwrup_Cmd, int Cld12VSC2Pwrup_Cmd, int Cld12VSC3Pwrup_Cmd, int Cld12VSC4Pwrup_Cmd, int Cld12VSC5Pwrup_Cmd, int Cld12VSC6Pwrup_Cmd, int Cld12VMCPwrdownCnfm_Cmd, int Cld12VRCPwrdownCnfm_Cmd, int Cld24VMCPwrdownCnfm_Cmd, int CldPA12VPwrdownCnfm_Cmd, int CldPA24VPwrdownCnfm_Cmd, int CldPwrCmd_RollCnt, int CldPwrCmd_Checksum)
{
    set_e_CldVehPwrup_Cmd(int CldVehPwrup_Cmd); 
    set_e_CldChasPwrup_Cmd(int CldChasPwrup_Cmd); 
    set_e_Cld12VMCPwrup_Cmd(int Cld12VMCPwrup_Cmd); 
    set_e_Cld12VRCPwrup_Cmd(int Cld12VRCPwrup_Cmd); 
    set_e_Cld24VMCPwrup_Cmd(int Cld24VMCPwrup_Cmd); 
    set_e_CldPA12VPwrup_Cmd(int CldPA12VPwrup_Cmd); 
    set_e_CldPA24VPwrup_Cmd(int CldPA24VPwrup_Cmd); 
    set_e_Cld12VSC1Pwrup_Cmd(int Cld12VSC1Pwrup_Cmd); 
    set_e_Cld12VSC2Pwrup_Cmd(int Cld12VSC2Pwrup_Cmd); 
    set_e_Cld12VSC3Pwrup_Cmd(int Cld12VSC3Pwrup_Cmd); 
    set_e_Cld12VSC4Pwrup_Cmd(int Cld12VSC4Pwrup_Cmd); 
    set_e_Cld12VSC5Pwrup_Cmd(int Cld12VSC5Pwrup_Cmd); 
    set_e_Cld12VSC6Pwrup_Cmd(int Cld12VSC6Pwrup_Cmd); 
    set_e_Cld12VMCPwrdownCnfm_Cmd(int Cld12VMCPwrdownCnfm_Cmd); 
    set_e_Cld12VRCPwrdownCnfm_Cmd(int Cld12VRCPwrdownCnfm_Cmd); 
    set_e_Cld24VMCPwrdownCnfm_Cmd(int Cld24VMCPwrdownCnfm_Cmd); 
    set_e_CldPA12VPwrdownCnfm_Cmd(int CldPA12VPwrdownCnfm_Cmd); 
    set_e_CldPA24VPwrdownCnfm_Cmd(int CldPA24VPwrdownCnfm_Cmd); 
    set_e_CldPwrCmd_RollCnt(int CldPwrCmd_RollCnt); 
    set_e_CldPwrCmd_Checksum(int CldPwrCmd_Checksum); 
}

void ADCUCldPowerCmd11A::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUCldPowerCmd11A::get_data()
{
    return data;
}

// 起始字节：0；起始位：6；信号长度：2；
void ADCUCldPowerCmd11A::set_e_CldVehPwrup_Cmd(int CldVehPwrup_Cmd)
{
    int x = CldVehPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：4；信号长度：2；
void ADCUCldPowerCmd11A::set_e_CldChasPwrup_Cmd(int CldChasPwrup_Cmd)
{
    int x = CldChasPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：2；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld12VMCPwrup_Cmd(int Cld12VMCPwrup_Cmd)
{
    int x = Cld12VMCPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：0；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld12VRCPwrup_Cmd(int Cld12VRCPwrup_Cmd)
{
    int x = Cld12VRCPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：14；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld24VMCPwrup_Cmd(int Cld24VMCPwrup_Cmd)
{
    int x = Cld24VMCPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：12；信号长度：2；
void ADCUCldPowerCmd11A::set_e_CldPA12VPwrup_Cmd(int CldPA12VPwrup_Cmd)
{
    int x = CldPA12VPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：10；信号长度：2；
void ADCUCldPowerCmd11A::set_e_CldPA24VPwrup_Cmd(int CldPA24VPwrup_Cmd)
{
    int x = CldPA24VPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：8；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld12VSC1Pwrup_Cmd(int Cld12VSC1Pwrup_Cmd)
{
    int x = Cld12VSC1Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：2；起始位：22；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld12VSC2Pwrup_Cmd(int Cld12VSC2Pwrup_Cmd)
{
    int x = Cld12VSC2Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：20；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld12VSC3Pwrup_Cmd(int Cld12VSC3Pwrup_Cmd)
{
    int x = Cld12VSC3Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：18；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld12VSC4Pwrup_Cmd(int Cld12VSC4Pwrup_Cmd)
{
    int x = Cld12VSC4Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：16；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld12VSC5Pwrup_Cmd(int Cld12VSC5Pwrup_Cmd)
{
    int x = Cld12VSC5Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：3；起始位：30；信号长度：2；
void ADCUCldPowerCmd11A::set_e_Cld12VSC6Pwrup_Cmd(int Cld12VSC6Pwrup_Cmd)
{
    int x = Cld12VSC6Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[3] += to_set.return_byte_t();
}

// 起始字节：4；起始位：39；信号长度：1；
void ADCUCldPowerCmd11A::set_e_Cld12VMCPwrdownCnfm_Cmd(int Cld12VMCPwrdownCnfm_Cmd)
{
    int x = Cld12VMCPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：38；信号长度：1；
void ADCUCldPowerCmd11A::set_e_Cld12VRCPwrdownCnfm_Cmd(int Cld12VRCPwrdownCnfm_Cmd)
{
    int x = Cld12VRCPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：37；信号长度：1；
void ADCUCldPowerCmd11A::set_e_Cld24VMCPwrdownCnfm_Cmd(int Cld24VMCPwrdownCnfm_Cmd)
{
    int x = Cld24VMCPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：36；信号长度：1；
void ADCUCldPowerCmd11A::set_e_CldPA12VPwrdownCnfm_Cmd(int CldPA12VPwrdownCnfm_Cmd)
{
    int x = CldPA12VPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：35；信号长度：1；
void ADCUCldPowerCmd11A::set_e_CldPA24VPwrdownCnfm_Cmd(int CldPA24VPwrdownCnfm_Cmd)
{
    int x = CldPA24VPwrdownCnfm_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 3, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUCldPowerCmd11A::set_e_CldPwrCmd_RollCnt(int CldPwrCmd_RollCnt)
{
    int x = CldPwrCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUCldPowerCmd11A::set_e_CldPwrCmd_Checksum(int CldPwrCmd_Checksum)
{
    int x = CldPwrCmd_Checksum;
    uint8_t a = 0; 

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
