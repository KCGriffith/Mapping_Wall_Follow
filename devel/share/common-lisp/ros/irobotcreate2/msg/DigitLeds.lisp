; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude DigitLeds.msg.html

(cl:defclass <DigitLeds> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (digits
    :reader digits
    :initarg :digits
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass DigitLeds (<DigitLeds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitLeds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitLeds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<DigitLeds> is deprecated: use irobotcreate2-msg:DigitLeds instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DigitLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'digits-val :lambda-list '(m))
(cl:defmethod digits-val ((m <DigitLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:digits-val is deprecated.  Use irobotcreate2-msg:digits instead.")
  (digits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitLeds>) ostream)
  "Serializes a message object of type '<DigitLeds>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'digits))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitLeds>) istream)
  "Deserializes a message object of type '<DigitLeds>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitLeds>)))
  "Returns string type for a message object of type '<DigitLeds>"
  "irobotcreate2/DigitLeds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitLeds)))
  "Returns string type for a message object of type 'DigitLeds"
  "irobotcreate2/DigitLeds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitLeds>)))
  "Returns md5sum for a message object of type '<DigitLeds>"
  "e7ef65e4fe68a8a88d61368aaeee0eef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitLeds)))
  "Returns md5sum for a message object of type 'DigitLeds"
  "e7ef65e4fe68a8a88d61368aaeee0eef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitLeds>)))
  "Returns full string definition for message of type '<DigitLeds>"
  (cl:format cl:nil "Header header~%uint8[] digits~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitLeds)))
  "Returns full string definition for message of type 'DigitLeds"
  (cl:format cl:nil "Header header~%uint8[] digits~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitLeds>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitLeds>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitLeds
    (cl:cons ':header (header msg))
    (cl:cons ':digits (digits msg))
))
