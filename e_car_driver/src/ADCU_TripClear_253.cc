#include "ADCU_TripClear_253.hpp"

int32_t ADCUTripClear253::ID = 0x253;

// public
ADCUTripClear253::ADCUTripClear253() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUTripClear253::UpdateData(int TotalTripClear_Cmd, int RmtDrvTripClear_Cmd, int AutoDrvTripClear_Cmd, int CldDrvTripClear_Cmd, int TripClear_RollCnt, int TripClear_Checksum)
{
    set_e_TotalTripClear_Cmd(int TotalTripClear_Cmd); 
    set_e_RmtDrvTripClear_Cmd(int RmtDrvTripClear_Cmd);
    set_e_AutoDrvTripClear_Cmd(int AutoDrvTripClear_Cmd); 
    set_e_CldDrvTripClear_Cmd(int CldDrvTripClear_Cmd);
    set_e_TripClear_RollCnt(int TripClear_RollCnt); 
    set_e_TripClear_Checksum(int TripClear_Checksum); 
}

void ADCUTripClear253::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUTripClear253::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUTripClear253::set_e_TotalTripClear_Cmd(int TotalTripClear_Cmd)
{
    int x = TotalTripClear_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：6；信号长度：1；
void ADCUTripClear253::set_e_RmtDrvTripClear_Cmd(int RmtDrvTripClear_Cmd)
{
    int x = RmtDrvTripClear_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：5；信号长度：1；
void ADCUTripClear253::set_e_AutoDrvTripClear_Cmd(int AutoDrvTripClear_Cmd)
{
    int x = AutoDrvTripClear_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：4；信号长度：1；
void ADCUTripClear253::set_e_CldDrvTripClear_Cmd(int CldDrvTripClear_Cmd)
{
    int x = CldDrvTripClear_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUTripClear253::set_e_TripClear_RollCnt(int TripClear_RollCnt)
{
    int x = TripClear_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUTripClear253::set_e_TripClear_Checksum(int TripClear_Checksum)
{
    int x = TripClear_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
