#include "e_car_main/Byte.hpp" 

Byte::Byte(std::uint8_t bytes)//构造函数的实现
{
    byte_t = bytes; //接受一个8位的整数作为参数，将其赋值给类的私有成员变量
}

Byte::~Byte()//析构函数的实现
{
}

int32_t Byte::get_byte(uint start, uint len)
{
    uint8_t new_byte;
    new_byte = byte_t << (8-start-len);//byte_t左移(8-start-len)位
    new_byte = new_byte >> (8-len);//new_byte右移(8-len)位
    return static_cast<int32_t>(new_byte);//static_cast为显式类型转换，提供更好的可读性与安全性
}

uint8_t Byte::return_byte_t()
{
    return byte_t;
}

void Byte::set_value(uint8_t value, uint start, uint len)
{
    value <<= (8-len);
    value >>= (8-start-len);
    byte_t += value;
}

