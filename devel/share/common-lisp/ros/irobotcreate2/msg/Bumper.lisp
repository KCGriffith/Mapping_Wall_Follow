; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude Bumper.msg.html

(cl:defclass <Bumper> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type irobotcreate2-msg:RoombaSwitch
    :initform (cl:make-instance 'irobotcreate2-msg:RoombaSwitch))
   (right
    :reader right
    :initarg :right
    :type irobotcreate2-msg:RoombaSwitch
    :initform (cl:make-instance 'irobotcreate2-msg:RoombaSwitch)))
)

(cl:defclass Bumper (<Bumper>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bumper>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bumper)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<Bumper> is deprecated: use irobotcreate2-msg:Bumper instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <Bumper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:left-val is deprecated.  Use irobotcreate2-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <Bumper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:right-val is deprecated.  Use irobotcreate2-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bumper>) ostream)
  "Serializes a message object of type '<Bumper>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bumper>) istream)
  "Deserializes a message object of type '<Bumper>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bumper>)))
  "Returns string type for a message object of type '<Bumper>"
  "irobotcreate2/Bumper")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bumper)))
  "Returns string type for a message object of type 'Bumper"
  "irobotcreate2/Bumper")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bumper>)))
  "Returns md5sum for a message object of type '<Bumper>"
  "0ce131cedcae0c89b4efbe13237e4425")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bumper)))
  "Returns md5sum for a message object of type 'Bumper"
  "0ce131cedcae0c89b4efbe13237e4425")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bumper>)))
  "Returns full string definition for message of type '<Bumper>"
  (cl:format cl:nil "RoombaSwitch left~%RoombaSwitch right~%~%================================================================================~%MSG: irobotcreate2/RoombaSwitch~%Header header~%bool state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bumper)))
  "Returns full string definition for message of type 'Bumper"
  (cl:format cl:nil "RoombaSwitch left~%RoombaSwitch right~%~%================================================================================~%MSG: irobotcreate2/RoombaSwitch~%Header header~%bool state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bumper>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bumper>))
  "Converts a ROS message object to a list"
  (cl:list 'Bumper
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
