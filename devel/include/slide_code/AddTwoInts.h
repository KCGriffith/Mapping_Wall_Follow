// Generated by gencpp from file slide_code/AddTwoInts.msg
// DO NOT EDIT!


#ifndef SLIDE_CODE_MESSAGE_ADDTWOINTS_H
#define SLIDE_CODE_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <slide_code/AddTwoIntsRequest.h>
#include <slide_code/AddTwoIntsResponse.h>


namespace slide_code
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace slide_code


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::slide_code::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::slide_code::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::slide_code::AddTwoInts > {
  static const char* value()
  {
    return "slide_code/AddTwoInts";
  }

  static const char* value(const ::slide_code::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::slide_code::AddTwoIntsRequest> should match 
// service_traits::MD5Sum< ::slide_code::AddTwoInts > 
template<>
struct MD5Sum< ::slide_code::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::slide_code::AddTwoInts >::value();
  }
  static const char* value(const ::slide_code::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::slide_code::AddTwoIntsRequest> should match 
// service_traits::DataType< ::slide_code::AddTwoInts > 
template<>
struct DataType< ::slide_code::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::slide_code::AddTwoInts >::value();
  }
  static const char* value(const ::slide_code::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::slide_code::AddTwoIntsResponse> should match 
// service_traits::MD5Sum< ::slide_code::AddTwoInts > 
template<>
struct MD5Sum< ::slide_code::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::slide_code::AddTwoInts >::value();
  }
  static const char* value(const ::slide_code::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::slide_code::AddTwoIntsResponse> should match 
// service_traits::DataType< ::slide_code::AddTwoInts > 
template<>
struct DataType< ::slide_code::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::slide_code::AddTwoInts >::value();
  }
  static const char* value(const ::slide_code::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SLIDE_CODE_MESSAGE_ADDTWOINTS_H