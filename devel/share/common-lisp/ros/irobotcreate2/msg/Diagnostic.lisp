; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude Diagnostic.msg.html

(cl:defclass <Diagnostic> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_motor_current
    :reader left_motor_current
    :initarg :left_motor_current
    :type cl:fixnum
    :initform 0)
   (right_motor_current
    :reader right_motor_current
    :initarg :right_motor_current
    :type cl:fixnum
    :initform 0)
   (main_brush_current
    :reader main_brush_current
    :initarg :main_brush_current
    :type cl:fixnum
    :initform 0)
   (side_brush_current
    :reader side_brush_current
    :initarg :side_brush_current
    :type cl:fixnum
    :initform 0)
   (left_motor_overcurrent
    :reader left_motor_overcurrent
    :initarg :left_motor_overcurrent
    :type cl:boolean
    :initform cl:nil)
   (right_motor_overcurrent
    :reader right_motor_overcurrent
    :initarg :right_motor_overcurrent
    :type cl:boolean
    :initform cl:nil)
   (main_brush_overcurrent
    :reader main_brush_overcurrent
    :initarg :main_brush_overcurrent
    :type cl:boolean
    :initform cl:nil)
   (side_brush_overcurrent
    :reader side_brush_overcurrent
    :initarg :side_brush_overcurrent
    :type cl:boolean
    :initform cl:nil)
   (battery_current
    :reader battery_current
    :initarg :battery_current
    :type cl:fixnum
    :initform 0)
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:fixnum
    :initform 0)
   (battery_temperature
    :reader battery_temperature
    :initarg :battery_temperature
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Diagnostic (<Diagnostic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Diagnostic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Diagnostic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<Diagnostic> is deprecated: use irobotcreate2-msg:Diagnostic instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_motor_current-val :lambda-list '(m))
(cl:defmethod left_motor_current-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:left_motor_current-val is deprecated.  Use irobotcreate2-msg:left_motor_current instead.")
  (left_motor_current m))

(cl:ensure-generic-function 'right_motor_current-val :lambda-list '(m))
(cl:defmethod right_motor_current-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:right_motor_current-val is deprecated.  Use irobotcreate2-msg:right_motor_current instead.")
  (right_motor_current m))

(cl:ensure-generic-function 'main_brush_current-val :lambda-list '(m))
(cl:defmethod main_brush_current-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:main_brush_current-val is deprecated.  Use irobotcreate2-msg:main_brush_current instead.")
  (main_brush_current m))

(cl:ensure-generic-function 'side_brush_current-val :lambda-list '(m))
(cl:defmethod side_brush_current-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:side_brush_current-val is deprecated.  Use irobotcreate2-msg:side_brush_current instead.")
  (side_brush_current m))

(cl:ensure-generic-function 'left_motor_overcurrent-val :lambda-list '(m))
(cl:defmethod left_motor_overcurrent-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:left_motor_overcurrent-val is deprecated.  Use irobotcreate2-msg:left_motor_overcurrent instead.")
  (left_motor_overcurrent m))

(cl:ensure-generic-function 'right_motor_overcurrent-val :lambda-list '(m))
(cl:defmethod right_motor_overcurrent-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:right_motor_overcurrent-val is deprecated.  Use irobotcreate2-msg:right_motor_overcurrent instead.")
  (right_motor_overcurrent m))

(cl:ensure-generic-function 'main_brush_overcurrent-val :lambda-list '(m))
(cl:defmethod main_brush_overcurrent-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:main_brush_overcurrent-val is deprecated.  Use irobotcreate2-msg:main_brush_overcurrent instead.")
  (main_brush_overcurrent m))

(cl:ensure-generic-function 'side_brush_overcurrent-val :lambda-list '(m))
(cl:defmethod side_brush_overcurrent-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:side_brush_overcurrent-val is deprecated.  Use irobotcreate2-msg:side_brush_overcurrent instead.")
  (side_brush_overcurrent m))

(cl:ensure-generic-function 'battery_current-val :lambda-list '(m))
(cl:defmethod battery_current-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:battery_current-val is deprecated.  Use irobotcreate2-msg:battery_current instead.")
  (battery_current m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:battery_voltage-val is deprecated.  Use irobotcreate2-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'battery_temperature-val :lambda-list '(m))
(cl:defmethod battery_temperature-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:battery_temperature-val is deprecated.  Use irobotcreate2-msg:battery_temperature instead.")
  (battery_temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Diagnostic>) ostream)
  "Serializes a message object of type '<Diagnostic>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'left_motor_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_motor_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'main_brush_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'side_brush_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_motor_overcurrent) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_motor_overcurrent) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'main_brush_overcurrent) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'side_brush_overcurrent) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'battery_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'battery_voltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'battery_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Diagnostic>) istream)
  "Deserializes a message object of type '<Diagnostic>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_motor_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_motor_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'main_brush_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'side_brush_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'left_motor_overcurrent) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_motor_overcurrent) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'main_brush_overcurrent) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'side_brush_overcurrent) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_voltage) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Diagnostic>)))
  "Returns string type for a message object of type '<Diagnostic>"
  "irobotcreate2/Diagnostic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Diagnostic)))
  "Returns string type for a message object of type 'Diagnostic"
  "irobotcreate2/Diagnostic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Diagnostic>)))
  "Returns md5sum for a message object of type '<Diagnostic>"
  "c5ab1a026621d8d87d7316b146c2ca2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Diagnostic)))
  "Returns md5sum for a message object of type 'Diagnostic"
  "c5ab1a026621d8d87d7316b146c2ca2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Diagnostic>)))
  "Returns full string definition for message of type '<Diagnostic>"
  (cl:format cl:nil "Header header~%int16 left_motor_current~%int16 right_motor_current~%int16 main_brush_current~%int16 side_brush_current~%bool left_motor_overcurrent~%bool right_motor_overcurrent~%bool main_brush_overcurrent~%bool side_brush_overcurrent~%int16 battery_current~%int16 battery_voltage~%int8 battery_temperature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Diagnostic)))
  "Returns full string definition for message of type 'Diagnostic"
  (cl:format cl:nil "Header header~%int16 left_motor_current~%int16 right_motor_current~%int16 main_brush_current~%int16 side_brush_current~%bool left_motor_overcurrent~%bool right_motor_overcurrent~%bool main_brush_overcurrent~%bool side_brush_overcurrent~%int16 battery_current~%int16 battery_voltage~%int8 battery_temperature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Diagnostic>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     1
     1
     1
     1
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Diagnostic>))
  "Converts a ROS message object to a list"
  (cl:list 'Diagnostic
    (cl:cons ':header (header msg))
    (cl:cons ':left_motor_current (left_motor_current msg))
    (cl:cons ':right_motor_current (right_motor_current msg))
    (cl:cons ':main_brush_current (main_brush_current msg))
    (cl:cons ':side_brush_current (side_brush_current msg))
    (cl:cons ':left_motor_overcurrent (left_motor_overcurrent msg))
    (cl:cons ':right_motor_overcurrent (right_motor_overcurrent msg))
    (cl:cons ':main_brush_overcurrent (main_brush_overcurrent msg))
    (cl:cons ':side_brush_overcurrent (side_brush_overcurrent msg))
    (cl:cons ':battery_current (battery_current msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':battery_temperature (battery_temperature msg))
))
