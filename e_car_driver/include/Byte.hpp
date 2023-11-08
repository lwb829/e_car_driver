#pragma once
#include <iostream>
//操作和处理8位（一个字节）的数据
class Byte //定义了一个类名为Byte
{
private://私有成员变量
    uint8_t byte_t;//存储无符号8位整数

public: // 以下的成员和方法在类外部可以被访问
    Byte(std::uint8_t byte);//类的构造函数，初始化'byte_t'成员变量，接受一个8位的整数作为参数
    ~Byte();// 类的析构函数，用于释放资源
    uint8_t return_byte_t();//返回byte_t的值
    int32_t get_byte(uint start, uint end); // 用于获取指定位范围内的值，并返回一个32位整数
    void set_value(uint8_t value, uint start, uint len);//设置指定位范围内的值
};

