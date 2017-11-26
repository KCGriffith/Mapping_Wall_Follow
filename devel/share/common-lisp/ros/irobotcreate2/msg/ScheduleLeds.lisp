; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude ScheduleLeds.msg.html

(cl:defclass <ScheduleLeds> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sunday
    :reader sunday
    :initarg :sunday
    :type cl:boolean
    :initform cl:nil)
   (monday
    :reader monday
    :initarg :monday
    :type cl:boolean
    :initform cl:nil)
   (tuesday
    :reader tuesday
    :initarg :tuesday
    :type cl:boolean
    :initform cl:nil)
   (wednesday
    :reader wednesday
    :initarg :wednesday
    :type cl:boolean
    :initform cl:nil)
   (thursday
    :reader thursday
    :initarg :thursday
    :type cl:boolean
    :initform cl:nil)
   (friday
    :reader friday
    :initarg :friday
    :type cl:boolean
    :initform cl:nil)
   (saturday
    :reader saturday
    :initarg :saturday
    :type cl:boolean
    :initform cl:nil)
   (colon
    :reader colon
    :initarg :colon
    :type cl:boolean
    :initform cl:nil)
   (pm
    :reader pm
    :initarg :pm
    :type cl:boolean
    :initform cl:nil)
   (am
    :reader am
    :initarg :am
    :type cl:boolean
    :initform cl:nil)
   (clock
    :reader clock
    :initarg :clock
    :type cl:boolean
    :initform cl:nil)
   (schedule
    :reader schedule
    :initarg :schedule
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ScheduleLeds (<ScheduleLeds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScheduleLeds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScheduleLeds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<ScheduleLeds> is deprecated: use irobotcreate2-msg:ScheduleLeds instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sunday-val :lambda-list '(m))
(cl:defmethod sunday-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:sunday-val is deprecated.  Use irobotcreate2-msg:sunday instead.")
  (sunday m))

(cl:ensure-generic-function 'monday-val :lambda-list '(m))
(cl:defmethod monday-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:monday-val is deprecated.  Use irobotcreate2-msg:monday instead.")
  (monday m))

(cl:ensure-generic-function 'tuesday-val :lambda-list '(m))
(cl:defmethod tuesday-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:tuesday-val is deprecated.  Use irobotcreate2-msg:tuesday instead.")
  (tuesday m))

(cl:ensure-generic-function 'wednesday-val :lambda-list '(m))
(cl:defmethod wednesday-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:wednesday-val is deprecated.  Use irobotcreate2-msg:wednesday instead.")
  (wednesday m))

(cl:ensure-generic-function 'thursday-val :lambda-list '(m))
(cl:defmethod thursday-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:thursday-val is deprecated.  Use irobotcreate2-msg:thursday instead.")
  (thursday m))

(cl:ensure-generic-function 'friday-val :lambda-list '(m))
(cl:defmethod friday-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:friday-val is deprecated.  Use irobotcreate2-msg:friday instead.")
  (friday m))

(cl:ensure-generic-function 'saturday-val :lambda-list '(m))
(cl:defmethod saturday-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:saturday-val is deprecated.  Use irobotcreate2-msg:saturday instead.")
  (saturday m))

(cl:ensure-generic-function 'colon-val :lambda-list '(m))
(cl:defmethod colon-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:colon-val is deprecated.  Use irobotcreate2-msg:colon instead.")
  (colon m))

(cl:ensure-generic-function 'pm-val :lambda-list '(m))
(cl:defmethod pm-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:pm-val is deprecated.  Use irobotcreate2-msg:pm instead.")
  (pm m))

(cl:ensure-generic-function 'am-val :lambda-list '(m))
(cl:defmethod am-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:am-val is deprecated.  Use irobotcreate2-msg:am instead.")
  (am m))

(cl:ensure-generic-function 'clock-val :lambda-list '(m))
(cl:defmethod clock-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:clock-val is deprecated.  Use irobotcreate2-msg:clock instead.")
  (clock m))

(cl:ensure-generic-function 'schedule-val :lambda-list '(m))
(cl:defmethod schedule-val ((m <ScheduleLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:schedule-val is deprecated.  Use irobotcreate2-msg:schedule instead.")
  (schedule m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScheduleLeds>) ostream)
  "Serializes a message object of type '<ScheduleLeds>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sunday) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'monday) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tuesday) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wednesday) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'thursday) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'friday) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'saturday) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'colon) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'am) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clock) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'schedule) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScheduleLeds>) istream)
  "Deserializes a message object of type '<ScheduleLeds>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'sunday) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'monday) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tuesday) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wednesday) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'thursday) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'friday) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'saturday) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'colon) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'am) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clock) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'schedule) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScheduleLeds>)))
  "Returns string type for a message object of type '<ScheduleLeds>"
  "irobotcreate2/ScheduleLeds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScheduleLeds)))
  "Returns string type for a message object of type 'ScheduleLeds"
  "irobotcreate2/ScheduleLeds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScheduleLeds>)))
  "Returns md5sum for a message object of type '<ScheduleLeds>"
  "4c552ea7c5b68737285d12a0dee0a839")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScheduleLeds)))
  "Returns md5sum for a message object of type 'ScheduleLeds"
  "4c552ea7c5b68737285d12a0dee0a839")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScheduleLeds>)))
  "Returns full string definition for message of type '<ScheduleLeds>"
  (cl:format cl:nil "Header header~%bool sunday~%bool monday~%bool tuesday~%bool wednesday~%bool thursday~%bool friday~%bool saturday~%bool colon~%bool pm~%bool am~%bool clock~%bool schedule~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScheduleLeds)))
  "Returns full string definition for message of type 'ScheduleLeds"
  (cl:format cl:nil "Header header~%bool sunday~%bool monday~%bool tuesday~%bool wednesday~%bool thursday~%bool friday~%bool saturday~%bool colon~%bool pm~%bool am~%bool clock~%bool schedule~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScheduleLeds>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScheduleLeds>))
  "Converts a ROS message object to a list"
  (cl:list 'ScheduleLeds
    (cl:cons ':header (header msg))
    (cl:cons ':sunday (sunday msg))
    (cl:cons ':monday (monday msg))
    (cl:cons ':tuesday (tuesday msg))
    (cl:cons ':wednesday (wednesday msg))
    (cl:cons ':thursday (thursday msg))
    (cl:cons ':friday (friday msg))
    (cl:cons ':saturday (saturday msg))
    (cl:cons ':colon (colon msg))
    (cl:cons ':pm (pm msg))
    (cl:cons ':am (am msg))
    (cl:cons ':clock (clock msg))
    (cl:cons ':schedule (schedule msg))
))
