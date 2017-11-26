; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude Brushes.msg.html

(cl:defclass <Brushes> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (main_brush
    :reader main_brush
    :initarg :main_brush
    :type cl:boolean
    :initform cl:nil)
   (main_brush_pwm
    :reader main_brush_pwm
    :initarg :main_brush_pwm
    :type cl:fixnum
    :initform 0)
   (main_brush_direction
    :reader main_brush_direction
    :initarg :main_brush_direction
    :type cl:boolean
    :initform cl:nil)
   (side_brush
    :reader side_brush
    :initarg :side_brush
    :type cl:boolean
    :initform cl:nil)
   (side_brush_pwm
    :reader side_brush_pwm
    :initarg :side_brush_pwm
    :type cl:fixnum
    :initform 0)
   (side_brush_clockwise
    :reader side_brush_clockwise
    :initarg :side_brush_clockwise
    :type cl:boolean
    :initform cl:nil)
   (vacuum
    :reader vacuum
    :initarg :vacuum
    :type cl:boolean
    :initform cl:nil)
   (vacuum_pwm
    :reader vacuum_pwm
    :initarg :vacuum_pwm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Brushes (<Brushes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Brushes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Brushes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<Brushes> is deprecated: use irobotcreate2-msg:Brushes instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'main_brush-val :lambda-list '(m))
(cl:defmethod main_brush-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:main_brush-val is deprecated.  Use irobotcreate2-msg:main_brush instead.")
  (main_brush m))

(cl:ensure-generic-function 'main_brush_pwm-val :lambda-list '(m))
(cl:defmethod main_brush_pwm-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:main_brush_pwm-val is deprecated.  Use irobotcreate2-msg:main_brush_pwm instead.")
  (main_brush_pwm m))

(cl:ensure-generic-function 'main_brush_direction-val :lambda-list '(m))
(cl:defmethod main_brush_direction-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:main_brush_direction-val is deprecated.  Use irobotcreate2-msg:main_brush_direction instead.")
  (main_brush_direction m))

(cl:ensure-generic-function 'side_brush-val :lambda-list '(m))
(cl:defmethod side_brush-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:side_brush-val is deprecated.  Use irobotcreate2-msg:side_brush instead.")
  (side_brush m))

(cl:ensure-generic-function 'side_brush_pwm-val :lambda-list '(m))
(cl:defmethod side_brush_pwm-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:side_brush_pwm-val is deprecated.  Use irobotcreate2-msg:side_brush_pwm instead.")
  (side_brush_pwm m))

(cl:ensure-generic-function 'side_brush_clockwise-val :lambda-list '(m))
(cl:defmethod side_brush_clockwise-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:side_brush_clockwise-val is deprecated.  Use irobotcreate2-msg:side_brush_clockwise instead.")
  (side_brush_clockwise m))

(cl:ensure-generic-function 'vacuum-val :lambda-list '(m))
(cl:defmethod vacuum-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:vacuum-val is deprecated.  Use irobotcreate2-msg:vacuum instead.")
  (vacuum m))

(cl:ensure-generic-function 'vacuum_pwm-val :lambda-list '(m))
(cl:defmethod vacuum_pwm-val ((m <Brushes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:vacuum_pwm-val is deprecated.  Use irobotcreate2-msg:vacuum_pwm instead.")
  (vacuum_pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Brushes>) ostream)
  "Serializes a message object of type '<Brushes>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'main_brush) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'main_brush_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'main_brush_direction) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'side_brush) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'side_brush_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'side_brush_clockwise) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vacuum) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'vacuum_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Brushes>) istream)
  "Deserializes a message object of type '<Brushes>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'main_brush) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'main_brush_pwm) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'main_brush_direction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'side_brush) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'side_brush_pwm) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'side_brush_clockwise) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vacuum) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vacuum_pwm) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Brushes>)))
  "Returns string type for a message object of type '<Brushes>"
  "irobotcreate2/Brushes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Brushes)))
  "Returns string type for a message object of type 'Brushes"
  "irobotcreate2/Brushes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Brushes>)))
  "Returns md5sum for a message object of type '<Brushes>"
  "d4c497f02ce3244991df05e0d729013c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Brushes)))
  "Returns md5sum for a message object of type 'Brushes"
  "d4c497f02ce3244991df05e0d729013c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Brushes>)))
  "Returns full string definition for message of type '<Brushes>"
  (cl:format cl:nil "Header header~%bool main_brush~%int8 main_brush_pwm~%bool main_brush_direction~%bool side_brush~%int8 side_brush_pwm~%bool side_brush_clockwise~%bool vacuum~%int8 vacuum_pwm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Brushes)))
  "Returns full string definition for message of type 'Brushes"
  (cl:format cl:nil "Header header~%bool main_brush~%int8 main_brush_pwm~%bool main_brush_direction~%bool side_brush~%int8 side_brush_pwm~%bool side_brush_clockwise~%bool vacuum~%int8 vacuum_pwm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Brushes>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Brushes>))
  "Converts a ROS message object to a list"
  (cl:list 'Brushes
    (cl:cons ':header (header msg))
    (cl:cons ':main_brush (main_brush msg))
    (cl:cons ':main_brush_pwm (main_brush_pwm msg))
    (cl:cons ':main_brush_direction (main_brush_direction msg))
    (cl:cons ':side_brush (side_brush msg))
    (cl:cons ':side_brush_pwm (side_brush_pwm msg))
    (cl:cons ':side_brush_clockwise (side_brush_clockwise msg))
    (cl:cons ':vacuum (vacuum msg))
    (cl:cons ':vacuum_pwm (vacuum_pwm msg))
))
