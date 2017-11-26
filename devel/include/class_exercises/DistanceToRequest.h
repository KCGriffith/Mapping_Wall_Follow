// Generated by gencpp from file class_exercises/DistanceToRequest.msg
// DO NOT EDIT!


#ifndef CLASS_EXERCISES_MESSAGE_DISTANCETOREQUEST_H
#define CLASS_EXERCISES_MESSAGE_DISTANCETOREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace class_exercises
{
template <class ContainerAllocator>
struct DistanceToRequest_
{
  typedef DistanceToRequest_<ContainerAllocator> Type;

  DistanceToRequest_()
    : pos_x(0.0)
    , pos_y(0.0)  {
    }
  DistanceToRequest_(const ContainerAllocator& _alloc)
    : pos_x(0.0)
    , pos_y(0.0)  {
  (void)_alloc;
    }



   typedef float _pos_x_type;
  _pos_x_type pos_x;

   typedef float _pos_y_type;
  _pos_y_type pos_y;




  typedef boost::shared_ptr< ::class_exercises::DistanceToRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::class_exercises::DistanceToRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DistanceToRequest_

typedef ::class_exercises::DistanceToRequest_<std::allocator<void> > DistanceToRequest;

typedef boost::shared_ptr< ::class_exercises::DistanceToRequest > DistanceToRequestPtr;
typedef boost::shared_ptr< ::class_exercises::DistanceToRequest const> DistanceToRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::class_exercises::DistanceToRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::class_exercises::DistanceToRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace class_exercises

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'class_exercises': ['/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::class_exercises::DistanceToRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::class_exercises::DistanceToRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::class_exercises::DistanceToRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::class_exercises::DistanceToRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::class_exercises::DistanceToRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::class_exercises::DistanceToRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::class_exercises::DistanceToRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2178591bb5b4f72502724261422523b6";
  }

  static const char* value(const ::class_exercises::DistanceToRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2178591bb5b4f725ULL;
  static const uint64_t static_value2 = 0x02724261422523b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::class_exercises::DistanceToRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "class_exercises/DistanceToRequest";
  }

  static const char* value(const ::class_exercises::DistanceToRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::class_exercises::DistanceToRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 pos_x\n\
float32 pos_y\n\
";
  }

  static const char* value(const ::class_exercises::DistanceToRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::class_exercises::DistanceToRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos_x);
      stream.next(m.pos_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DistanceToRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::class_exercises::DistanceToRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::class_exercises::DistanceToRequest_<ContainerAllocator>& v)
  {
    s << indent << "pos_x: ";
    Printer<float>::stream(s, indent + "  ", v.pos_x);
    s << indent << "pos_y: ";
    Printer<float>::stream(s, indent + "  ", v.pos_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CLASS_EXERCISES_MESSAGE_DISTANCETOREQUEST_H
