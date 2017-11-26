; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude Leds.msg.html

(cl:defclass <Leds> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (warning
    :reader warning
    :initarg :warning
    :type cl:boolean
    :initform cl:nil)
   (dock
    :reader dock
    :initarg :dock
    :type cl:boolean
    :initform cl:nil)
   (spot
    :reader spot
    :initarg :spot
    :type cl:boolean
    :initform cl:nil)
   (dirt_detect
    :reader dirt_detect
    :initarg :dirt_detect
    :type cl:boolean
    :initform cl:nil)
   (clean_color
    :reader clean_color
    :initarg :clean_color
    :type cl:fixnum
    :initform 0)
   (clean_intensity
    :reader clean_intensity
    :initarg :clean_intensity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Leds (<Leds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Leds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Leds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<Leds> is deprecated: use irobotcreate2-msg:Leds instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Leds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:header-val is deprecated.  Use irobotcreate2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'warning-val :lambda-list '(m))
(cl:defmethod warning-val ((m <Leds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:warning-val is deprecated.  Use irobotcreate2-msg:warning instead.")
  (warning m))

(cl:ensure-generic-function 'dock-val :lambda-list '(m))
(cl:defmethod dock-val ((m <Leds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:dock-val is deprecated.  Use irobotcreate2-msg:dock instead.")
  (dock m))

(cl:ensure-generic-function 'spot-val :lambda-list '(m))
(cl:defmethod spot-val ((m <Leds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:spot-val is deprecated.  Use irobotcreate2-msg:spot instead.")
  (spot m))

(cl:ensure-generic-function 'dirt_detect-val :lambda-list '(m))
(cl:defmethod dirt_detect-val ((m <Leds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:dirt_detect-val is deprecated.  Use irobotcreate2-msg:dirt_detect instead.")
  (dirt_detect m))

(cl:ensure-generic-function 'clean_color-val :lambda-list '(m))
(cl:defmethod clean_color-val ((m <Leds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:clean_color-val is deprecated.  Use irobotcreate2-msg:clean_color instead.")
  (clean_color m))

(cl:ensure-generic-function 'clean_intensity-val :lambda-list '(m))
(cl:defmethod clean_intensity-val ((m <Leds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:clean_intensity-val is deprecated.  Use irobotcreate2-msg:clean_intensity instead.")
  (clean_intensity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Leds>) ostream)
  "Serializes a message object of type '<Leds>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dirt_detect) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clean_color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clean_intensity)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Leds>) istream)
  "Deserializes a message object of type '<Leds>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dock) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'spot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dirt_detect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clean_color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clean_intensity)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Leds>)))
  "Returns string type for a message object of type '<Leds>"
  "irobotcreate2/Leds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Leds)))
  "Returns string type for a message object of type 'Leds"
  "irobotcreate2/Leds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Leds>)))
  "Returns md5sum for a message object of type '<Leds>"
  "d69ee7dfd55b5e80fe8d68fdc28e3612")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Leds)))
  "Returns md5sum for a message object of type 'Leds"
  "d69ee7dfd55b5e80fe8d68fdc28e3612")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Leds>)))
  "Returns full string definition for message of type '<Leds>"
  (cl:format cl:nil "Header header~%bool warning~%bool dock~%bool spot~%bool dirt_detect~%uint8 clean_color~%uint8 clean_intensity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Leds)))
  "Returns full string definition for message of type 'Leds"
  (cl:format cl:nil "Header header~%bool warning~%bool dock~%bool spot~%bool dirt_detect~%uint8 clean_color~%uint8 clean_intensity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Leds>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Leds>))
  "Converts a ROS message object to a list"
  (cl:list 'Leds
    (cl:cons ':header (header msg))
    (cl:cons ':warning (warning msg))
    (cl:cons ':dock (dock msg))
    (cl:cons ':spot (spot msg))
    (cl:cons ':dirt_detect (dirt_detect msg))
    (cl:cons ':clean_color (clean_color msg))
    (cl:cons ':clean_intensity (clean_intensity msg))
))
