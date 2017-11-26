; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude IRCharacter.msg.html

(cl:defclass <IRCharacter> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (omni
    :reader omni
    :initarg :omni
    :type cl:fixnum
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IRCharacter (<IRCharacter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IRCharacter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IRCharacter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<IRCharacter> is deprecated: use irobotcreate2-msg:IRCharacter instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IRCharacter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'omni-val :lambda-list '(m))
(cl:defmethod omni-val ((m <IRCharacter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:omni-val is deprecated.  Use irobotcreate2-msg:omni instead.")
  (omni m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <IRCharacter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:left-val is deprecated.  Use irobotcreate2-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <IRCharacter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:right-val is deprecated.  Use irobotcreate2-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IRCharacter>) ostream)
  "Serializes a message object of type '<IRCharacter>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'omni)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IRCharacter>) istream)
  "Deserializes a message object of type '<IRCharacter>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'omni)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IRCharacter>)))
  "Returns string type for a message object of type '<IRCharacter>"
  "irobotcreate2/IRCharacter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IRCharacter)))
  "Returns string type for a message object of type 'IRCharacter"
  "irobotcreate2/IRCharacter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IRCharacter>)))
  "Returns md5sum for a message object of type '<IRCharacter>"
  "fdef8c079e4550ab8502f7b78ba5302e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IRCharacter)))
  "Returns md5sum for a message object of type 'IRCharacter"
  "fdef8c079e4550ab8502f7b78ba5302e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IRCharacter>)))
  "Returns full string definition for message of type '<IRCharacter>"
  (cl:format cl:nil "Header header~%uint8 omni~%uint8 left~%uint8 right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IRCharacter)))
  "Returns full string definition for message of type 'IRCharacter"
  (cl:format cl:nil "Header header~%uint8 omni~%uint8 left~%uint8 right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IRCharacter>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IRCharacter>))
  "Converts a ROS message object to a list"
  (cl:list 'IRCharacter
    (cl:cons ':header (header msg))
    (cl:cons ':omni (omni msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
