// Generated by gencpp from file e_car_msgs/ADCU_SweepCmd.msg
// DO NOT EDIT!


#ifndef E_CAR_MSGS_MESSAGE_ADCU_SWEEPCMD_H
#define E_CAR_MSGS_MESSAGE_ADCU_SWEEPCMD_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace e_car_msgs
{
template <class ContainerAllocator>
struct ADCU_SweepCmd_
{
  typedef ADCU_SweepCmd_<ContainerAllocator> Type;

  ADCU_SweepCmd_()
    : header()
    , Tgt_SweepMode(0)
    , Sweep_Cmd(0)
    , ShakeDust_Cmd(0)
    , GbgDump_Cmd(0)
    , FtFenderCtrl_Cmd(0)
    , SweepEStop_Cmd(0)
    , BrushWtrValFbd_Cmd(0)
    , SweepCmd_RollCnt(0)
    , SweepCmd_Checksum(0)  {
    }
  ADCU_SweepCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Tgt_SweepMode(0)
    , Sweep_Cmd(0)
    , ShakeDust_Cmd(0)
    , GbgDump_Cmd(0)
    , FtFenderCtrl_Cmd(0)
    , SweepEStop_Cmd(0)
    , BrushWtrValFbd_Cmd(0)
    , SweepCmd_RollCnt(0)
    , SweepCmd_Checksum(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int8_t _Tgt_SweepMode_type;
  _Tgt_SweepMode_type Tgt_SweepMode;

   typedef int8_t _Sweep_Cmd_type;
  _Sweep_Cmd_type Sweep_Cmd;

   typedef int8_t _ShakeDust_Cmd_type;
  _ShakeDust_Cmd_type ShakeDust_Cmd;

   typedef int8_t _GbgDump_Cmd_type;
  _GbgDump_Cmd_type GbgDump_Cmd;

   typedef int8_t _FtFenderCtrl_Cmd_type;
  _FtFenderCtrl_Cmd_type FtFenderCtrl_Cmd;

   typedef int8_t _SweepEStop_Cmd_type;
  _SweepEStop_Cmd_type SweepEStop_Cmd;

   typedef int8_t _BrushWtrValFbd_Cmd_type;
  _BrushWtrValFbd_Cmd_type BrushWtrValFbd_Cmd;

   typedef int32_t _SweepCmd_RollCnt_type;
  _SweepCmd_RollCnt_type SweepCmd_RollCnt;

   typedef int32_t _SweepCmd_Checksum_type;
  _SweepCmd_Checksum_type SweepCmd_Checksum;





  typedef boost::shared_ptr< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> const> ConstPtr;

}; // struct ADCU_SweepCmd_

typedef ::e_car_msgs::ADCU_SweepCmd_<std::allocator<void> > ADCU_SweepCmd;

typedef boost::shared_ptr< ::e_car_msgs::ADCU_SweepCmd > ADCU_SweepCmdPtr;
typedef boost::shared_ptr< ::e_car_msgs::ADCU_SweepCmd const> ADCU_SweepCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator1> & lhs, const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.Tgt_SweepMode == rhs.Tgt_SweepMode &&
    lhs.Sweep_Cmd == rhs.Sweep_Cmd &&
    lhs.ShakeDust_Cmd == rhs.ShakeDust_Cmd &&
    lhs.GbgDump_Cmd == rhs.GbgDump_Cmd &&
    lhs.FtFenderCtrl_Cmd == rhs.FtFenderCtrl_Cmd &&
    lhs.SweepEStop_Cmd == rhs.SweepEStop_Cmd &&
    lhs.BrushWtrValFbd_Cmd == rhs.BrushWtrValFbd_Cmd &&
    lhs.SweepCmd_RollCnt == rhs.SweepCmd_RollCnt &&
    lhs.SweepCmd_Checksum == rhs.SweepCmd_Checksum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator1> & lhs, const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace e_car_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9fc2cfb79831693da7794ecbd5abc3cc";
  }

  static const char* value(const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9fc2cfb79831693dULL;
  static const uint64_t static_value2 = 0xa7794ecbd5abc3ccULL;
};

template<class ContainerAllocator>
struct DataType< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e_car_msgs/ADCU_SweepCmd";
  }

  static const char* value(const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"int8 Tgt_SweepMode\n"
"\n"
"int8 Sweep_Cmd\n"
"\n"
"int8 ShakeDust_Cmd\n"
"\n"
"int8 GbgDump_Cmd\n"
"\n"
"int8 FtFenderCtrl_Cmd\n"
"\n"
"int8 SweepEStop_Cmd\n"
"\n"
"int8 BrushWtrValFbd_Cmd\n"
"\n"
"int32 SweepCmd_RollCnt\n"
"\n"
"int32 SweepCmd_Checksum\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Tgt_SweepMode);
      stream.next(m.Sweep_Cmd);
      stream.next(m.ShakeDust_Cmd);
      stream.next(m.GbgDump_Cmd);
      stream.next(m.FtFenderCtrl_Cmd);
      stream.next(m.SweepEStop_Cmd);
      stream.next(m.BrushWtrValFbd_Cmd);
      stream.next(m.SweepCmd_RollCnt);
      stream.next(m.SweepCmd_Checksum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ADCU_SweepCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::e_car_msgs::ADCU_SweepCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Tgt_SweepMode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.Tgt_SweepMode);
    s << indent << "Sweep_Cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.Sweep_Cmd);
    s << indent << "ShakeDust_Cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ShakeDust_Cmd);
    s << indent << "GbgDump_Cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.GbgDump_Cmd);
    s << indent << "FtFenderCtrl_Cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.FtFenderCtrl_Cmd);
    s << indent << "SweepEStop_Cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.SweepEStop_Cmd);
    s << indent << "BrushWtrValFbd_Cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.BrushWtrValFbd_Cmd);
    s << indent << "SweepCmd_RollCnt: ";
    Printer<int32_t>::stream(s, indent + "  ", v.SweepCmd_RollCnt);
    s << indent << "SweepCmd_Checksum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.SweepCmd_Checksum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // E_CAR_MSGS_MESSAGE_ADCU_SWEEPCMD_H
