; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude Song.msg.html

(cl:defclass <Song> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (song_number
    :reader song_number
    :initarg :song_number
    :type cl:fixnum
    :initform 0)
   (notes
    :reader notes
    :initarg :notes
    :type (cl:vector irobotcreate2-msg:Note)
   :initform (cl:make-array 0 :element-type 'irobotcreate2-msg:Note :initial-element (cl:make-instance 'irobotcreate2-msg:Note))))
)

(cl:defclass Song (<Song>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Song>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Song)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<Song> is deprecated: use irobotcreate2-msg:Song instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Song>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'song_number-val :lambda-list '(m))
(cl:defmethod song_number-val ((m <Song>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:song_number-val is deprecated.  Use irobotcreate2-msg:song_number instead.")
  (song_number m))

(cl:ensure-generic-function 'notes-val :lambda-list '(m))
(cl:defmethod notes-val ((m <Song>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:notes-val is deprecated.  Use irobotcreate2-msg:notes instead.")
  (notes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Song>) ostream)
  "Serializes a message object of type '<Song>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song_number)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'notes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'notes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Song>) istream)
  "Deserializes a message object of type '<Song>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song_number)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'notes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'notes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'irobotcreate2-msg:Note))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Song>)))
  "Returns string type for a message object of type '<Song>"
  "irobotcreate2/Song")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Song)))
  "Returns string type for a message object of type 'Song"
  "irobotcreate2/Song")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Song>)))
  "Returns md5sum for a message object of type '<Song>"
  "2a8e64bdbdd926225694c88b701e505f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Song)))
  "Returns md5sum for a message object of type 'Song"
  "2a8e64bdbdd926225694c88b701e505f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Song>)))
  "Returns full string definition for message of type '<Song>"
  (cl:format cl:nil "Header header~%uint8 song_number~%Note[] notes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: irobotcreate2/Note~%uint8 note~%uint8 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Song)))
  "Returns full string definition for message of type 'Song"
  (cl:format cl:nil "Header header~%uint8 song_number~%Note[] notes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: irobotcreate2/Note~%uint8 note~%uint8 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Song>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'notes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Song>))
  "Converts a ROS message object to a list"
  (cl:list 'Song
    (cl:cons ':header (header msg))
    (cl:cons ':song_number (song_number msg))
    (cl:cons ':notes (notes msg))
))
