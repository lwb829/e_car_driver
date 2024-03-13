#include "ecar_driver/PCU_PowerCmd_127.hpp"

int32_t PCUPowerCmd127::ID = 0x127;

// public
PCUPowerCmd127::PCUPowerCmd127() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void PCUPowerCmd127::UpdateData(int ADChasPwrup_Cmd, int AD12VMCPwrup_Cmd, int AD12VSC1Pwrup_Cmd, int AD12VSC2Pwrup_Cmd, int AD12VSC3Pwrup_Cmd, int AD12VSC4Pwrup_Cmd, int AD12VSC5Pwrup_Cmd, int AD12VSC6Pwrup_Cmd, int PwrCmd_RollCnt, int PwrCmd_Checksum)
{
    set_e_ADChasPwrup_Cmd(ADChasPwrup_Cmd); 
    set_e_AD12VMCPwrup_Cmd(AD12VMCPwrup_Cmd); 
    set_e_AD12VSC1Pwrup_Cmd(AD12VSC1Pwrup_Cmd);
    set_e_AD12VSC2Pwrup_Cmd(AD12VSC2Pwrup_Cmd); 
    set_e_AD12VSC3Pwrup_Cmd(AD12VSC3Pwrup_Cmd); 
    set_e_AD12VSC4Pwrup_Cmd(AD12VSC4Pwrup_Cmd);
    set_e_AD12VSC5Pwrup_Cmd(AD12VSC5Pwrup_Cmd); 
    set_e_AD12VSC6Pwrup_Cmd(AD12VSC6Pwrup_Cmd); 
    set_e_PwrCmd_RollCnt(PwrCmd_RollCnt); 
    set_e_PwrCmd_Checksum(PwrCmd_Checksum); 
}

void PCUPowerCmd127::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;   
    }
}

uint8_t *PCUPowerCmd127::get_data()
{
    return data;
}

// 起始字节：0；起始位：6；信号长度：2；
void PCUPowerCmd127::set_e_ADChasPwrup_Cmd(int ADChasPwrup_Cmd)
{
    int x = ADChasPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：4；信号长度：2；
void PCUPowerCmd127::set_e_AD12VMCPwrup_Cmd(int AD12VMCPwrup_Cmd)
{
    int x = AD12VMCPwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：14；信号长度：2；
void PCUPowerCmd127::set_e_AD12VSC1Pwrup_Cmd(int AD12VSC1Pwrup_Cmd)
{
    int x = AD12VSC1Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：12；信号长度：2；
void PCUPowerCmd127::set_e_AD12VSC2Pwrup_Cmd(int AD12VSC2Pwrup_Cmd)
{
    int x = AD12VSC2Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：10；信号长度：2；
void PCUPowerCmd127::set_e_AD12VSC3Pwrup_Cmd(int AD12VSC3Pwrup_Cmd)
{
    int x = AD12VSC3Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：8；信号长度：2；
void PCUPowerCmd127::set_e_AD12VSC4Pwrup_Cmd(int AD12VSC4Pwrup_Cmd)
{
    int x = AD12VSC4Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 2);
    data[1] += to_set.return_byte_t();
}

// 起始字节：2；起始位：22；信号长度：2；
void PCUPowerCmd127::set_e_AD12VSC5Pwrup_Cmd(int AD12VSC5Pwrup_Cmd)
{
    int x = AD12VSC5Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：20；信号长度：2；
void PCUPowerCmd127::set_e_AD12VSC6Pwrup_Cmd(int AD12VSC6Pwrup_Cmd)
{
    int x = AD12VSC6Pwrup_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[2] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void PCUPowerCmd127::set_e_PwrCmd_RollCnt(int PwrCmd_RollCnt)
{
    int x = PwrCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void PCUPowerCmd127::set_e_PwrCmd_Checksum(int PwrCmd_Checksum)
{
    int x = PwrCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
