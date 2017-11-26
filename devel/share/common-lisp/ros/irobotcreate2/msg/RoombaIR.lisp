; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude RoombaIR.msg.html

(cl:defclass <RoombaIR> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil)
   (signal
    :reader signal
    :initarg :signal
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoombaIR (<RoombaIR>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoombaIR>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoombaIR)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<RoombaIR> is deprecated: use irobotcreate2-msg:RoombaIR instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoombaIR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RoombaIR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:state-val is deprecated.  Use irobotcreate2-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <RoombaIR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:signal-val is deprecated.  Use irobotcreate2-msg:signal instead.")
  (signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoombaIR>) ostream)
  "Serializes a message object of type '<RoombaIR>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'signal)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoombaIR>) istream)
  "Deserializes a message object of type '<RoombaIR>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'signal)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoombaIR>)))
  "Returns string type for a message object of type '<RoombaIR>"
  "irobotcreate2/RoombaIR")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoombaIR)))
  "Returns string type for a message object of type 'RoombaIR"
  "irobotcreate2/RoombaIR")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoombaIR>)))
  "Returns md5sum for a message object of type '<RoombaIR>"
  "a2eb843f93c486d3df9c635f426907b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoombaIR)))
  "Returns md5sum for a message object of type 'RoombaIR"
  "a2eb843f93c486d3df9c635f426907b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoombaIR>)))
  "Returns full string definition for message of type '<RoombaIR>"
  (cl:format cl:nil "Header header~%bool state~%uint16 signal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoombaIR)))
  "Returns full string definition for message of type 'RoombaIR"
  (cl:format cl:nil "Header header~%bool state~%uint16 signal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoombaIR>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoombaIR>))
  "Converts a ROS message object to a list"
  (cl:list 'RoombaIR
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':signal (signal msg))
))
