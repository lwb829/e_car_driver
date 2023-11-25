#include "ADCU_CrashClrCmd_12A.hpp"

int32_t ADCUCrashClrCmd12A::ID = 0x12A;

// public
ADCUCrashClrCmd12A::ADCUCrashClrCmd12A() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUCrashClrCmd12A::UpdateData(int CrashClearCmd_Valid, int CrashClear_Cmd, int EmgcSwhClearCmd_Valid, int EmgcSwhClear_Cmd, int CrashClr_RollCnt, int CrashClr_Checksum)
{
    set_e_CrashClearCmd_Valid(int CrashClearCmd_Valid); 
    set_e_CrashClear_Cmd(int CrashClear_Cmd); 
    set_e_EmgcSwhClearCmd_Valid(int EmgcSwhClearCmd_Valid);
    set_e_EmgcSwhClear_Cmd(int EmgcSwhClear_Cmd); 
    set_e_CrashClr_RollCnt(int CrashClr_RollCnt);
    set_e_CrashClr_Checksum(int CrashClr_Checksum);
}

void ADCUCrashClrCmd12A::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUCrashClrCmd12A::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUCrashClrCmd12A::set_e_CrashClearCmd_Valid(int CrashClearCmd_Valid)
{
    int x = CrashClearCmd_Valid;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：6；信号长度：1；
void ADCUCrashClrCmd12A::set_e_CrashClear_Cmd(int CrashClear_Cmd)
{
    int x = CrashClear_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：3；信号长度：1；
void ADCUCrashClrCmd12A::set_e_EmgcSwhClearCmd_Valid(int EmgcSwhClearCmd_Valid)
{
    int x = EmgcSwhClearCmd_Valid;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 3, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：2；信号长度：1；
void ADCUCrashClrCmd12A::set_e_EmgcSwhClear_Cmd(int EmgcSwhClear_Cmd)
{
    int x = EmgcSwhClear_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUCrashClrCmd12A::set_e_CrashClr_RollCnt(int CrashClr_RollCnt)
{
    int x = CrashClr_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUCrashClrCmd12A::set_e_CrashClr_Checksum(int CrashClr_Checksum)
{
    int x = CrashClr_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
