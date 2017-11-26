; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude Buttons.msg.html

(cl:defclass <Buttons> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (clean
    :reader clean
    :initarg :clean
    :type cl:boolean
    :initform cl:nil)
   (spot
    :reader spot
    :initarg :spot
    :type cl:boolean
    :initform cl:nil)
   (dock
    :reader dock
    :initarg :dock
    :type cl:boolean
    :initform cl:nil)
   (day
    :reader day
    :initarg :day
    :type cl:boolean
    :initform cl:nil)
   (hour
    :reader hour
    :initarg :hour
    :type cl:boolean
    :initform cl:nil)
   (minute
    :reader minute
    :initarg :minute
    :type cl:boolean
    :initform cl:nil)
   (schedule
    :reader schedule
    :initarg :schedule
    :type cl:boolean
    :initform cl:nil)
   (clock
    :reader clock
    :initarg :clock
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Buttons (<Buttons>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Buttons>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Buttons)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<Buttons> is deprecated: use irobotcreate2-msg:Buttons instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'clean-val :lambda-list '(m))
(cl:defmethod clean-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:clean-val is deprecated.  Use irobotcreate2-msg:clean instead.")
  (clean m))

(cl:ensure-generic-function 'spot-val :lambda-list '(m))
(cl:defmethod spot-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:spot-val is deprecated.  Use irobotcreate2-msg:spot instead.")
  (spot m))

(cl:ensure-generic-function 'dock-val :lambda-list '(m))
(cl:defmethod dock-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:dock-val is deprecated.  Use irobotcreate2-msg:dock instead.")
  (dock m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:day-val is deprecated.  Use irobotcreate2-msg:day instead.")
  (day m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:hour-val is deprecated.  Use irobotcreate2-msg:hour instead.")
  (hour m))

(cl:ensure-generic-function 'minute-val :lambda-list '(m))
(cl:defmethod minute-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:minute-val is deprecated.  Use irobotcreate2-msg:minute instead.")
  (minute m))

(cl:ensure-generic-function 'schedule-val :lambda-list '(m))
(cl:defmethod schedule-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:schedule-val is deprecated.  Use irobotcreate2-msg:schedule instead.")
  (schedule m))

(cl:ensure-generic-function 'clock-val :lambda-list '(m))
(cl:defmethod clock-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:clock-val is deprecated.  Use irobotcreate2-msg:clock instead.")
  (clock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Buttons>) ostream)
  "Serializes a message object of type '<Buttons>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clean) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'day) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hour) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'minute) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'schedule) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clock) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Buttons>) istream)
  "Deserializes a message object of type '<Buttons>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'clean) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'spot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dock) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'day) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'hour) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'minute) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'schedule) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clock) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Buttons>)))
  "Returns string type for a message object of type '<Buttons>"
  "irobotcreate2/Buttons")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Buttons)))
  "Returns string type for a message object of type 'Buttons"
  "irobotcreate2/Buttons")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Buttons>)))
  "Returns md5sum for a message object of type '<Buttons>"
  "2c6635fea08c0a11307b4518b1f7fd79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Buttons)))
  "Returns md5sum for a message object of type 'Buttons"
  "2c6635fea08c0a11307b4518b1f7fd79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Buttons>)))
  "Returns full string definition for message of type '<Buttons>"
  (cl:format cl:nil "Header header~%bool clean~%bool spot~%bool dock~%bool day~%bool hour~%bool minute~%bool schedule~%bool clock~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Buttons)))
  "Returns full string definition for message of type 'Buttons"
  (cl:format cl:nil "Header header~%bool clean~%bool spot~%bool dock~%bool day~%bool hour~%bool minute~%bool schedule~%bool clock~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Buttons>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Buttons>))
  "Converts a ROS message object to a list"
  (cl:list 'Buttons
    (cl:cons ':header (header msg))
    (cl:cons ':clean (clean msg))
    (cl:cons ':spot (spot msg))
    (cl:cons ':dock (dock msg))
    (cl:cons ':day (day msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':minute (minute msg))
    (cl:cons ':schedule (schedule msg))
    (cl:cons ':clock (clock msg))
))
