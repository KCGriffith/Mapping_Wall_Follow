// Generated by gencpp from file control/behavior.msg
// DO NOT EDIT!


#ifndef CONTROL_MESSAGE_BEHAVIOR_H
#define CONTROL_MESSAGE_BEHAVIOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace control
{
template <class ContainerAllocator>
struct behavior_
{
  typedef behavior_<ContainerAllocator> Type;

  behavior_()
    : active(false)
    , vel_fw(0.0)
    , vel_turn(0.0)  {
    }
  behavior_(const ContainerAllocator& _alloc)
    : active(false)
    , vel_fw(0.0)
    , vel_turn(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _active_type;
  _active_type active;

   typedef double _vel_fw_type;
  _vel_fw_type vel_fw;

   typedef double _vel_turn_type;
  _vel_turn_type vel_turn;




  typedef boost::shared_ptr< ::control::behavior_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::control::behavior_<ContainerAllocator> const> ConstPtr;

}; // struct behavior_

typedef ::control::behavior_<std::allocator<void> > behavior;

typedef boost::shared_ptr< ::control::behavior > behaviorPtr;
typedef boost::shared_ptr< ::control::behavior const> behaviorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::control::behavior_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::control::behavior_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'control': ['/home/keaton/Mapping_Wall_Follow/src/control/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::control::behavior_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control::behavior_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control::behavior_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control::behavior_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control::behavior_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control::behavior_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::control::behavior_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a8468d9e957529855a64a98da7731b7b";
  }

  static const char* value(const ::control::behavior_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa8468d9e95752985ULL;
  static const uint64_t static_value2 = 0x5a64a98da7731b7bULL;
};

template<class ContainerAllocator>
struct DataType< ::control::behavior_<ContainerAllocator> >
{
  static const char* value()
  {
    return "control/behavior";
  }

  static const char* value(const ::control::behavior_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::control::behavior_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool active\n\
float64 vel_fw\n\
float64 vel_turn\n\
";
  }

  static const char* value(const ::control::behavior_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::control::behavior_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.active);
      stream.next(m.vel_fw);
      stream.next(m.vel_turn);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct behavior_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::control::behavior_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::control::behavior_<ContainerAllocator>& v)
  {
    s << indent << "active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.active);
    s << indent << "vel_fw: ";
    Printer<double>::stream(s, indent + "  ", v.vel_fw);
    s << indent << "vel_turn: ";
    Printer<double>::stream(s, indent + "  ", v.vel_turn);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROL_MESSAGE_BEHAVIOR_H