; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude PlaySong.msg.html

(cl:defclass <PlaySong> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (song_number
    :reader song_number
    :initarg :song_number
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlaySong (<PlaySong>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaySong>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaySong)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<PlaySong> is deprecated: use irobotcreate2-msg:PlaySong instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlaySong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'song_number-val :lambda-list '(m))
(cl:defmethod song_number-val ((m <PlaySong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:song_number-val is deprecated.  Use irobotcreate2-msg:song_number instead.")
  (song_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaySong>) ostream)
  "Serializes a message object of type '<PlaySong>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song_number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaySong>) istream)
  "Deserializes a message object of type '<PlaySong>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song_number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaySong>)))
  "Returns string type for a message object of type '<PlaySong>"
  "irobotcreate2/PlaySong")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySong)))
  "Returns string type for a message object of type 'PlaySong"
  "irobotcreate2/PlaySong")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaySong>)))
  "Returns md5sum for a message object of type '<PlaySong>"
  "4da85658329795298b78d2ec93fdcedc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaySong)))
  "Returns md5sum for a message object of type 'PlaySong"
  "4da85658329795298b78d2ec93fdcedc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaySong>)))
  "Returns full string definition for message of type '<PlaySong>"
  (cl:format cl:nil "Header header~%uint8 song_number~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaySong)))
  "Returns full string definition for message of type 'PlaySong"
  (cl:format cl:nil "Header header~%uint8 song_number~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaySong>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaySong>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaySong
    (cl:cons ':header (header msg))
    (cl:cons ':song_number (song_number msg))
))
