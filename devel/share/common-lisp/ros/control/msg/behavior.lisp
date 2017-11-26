; Auto-generated. Do not edit!


(cl:in-package control-msg)


;//! \htmlinclude behavior.msg.html

(cl:defclass <behavior> (roslisp-msg-protocol:ros-message)
  ((active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (vel_fw
    :reader vel_fw
    :initarg :vel_fw
    :type cl:float
    :initform 0.0)
   (vel_turn
    :reader vel_turn
    :initarg :vel_turn
    :type cl:float
    :initform 0.0))
)

(cl:defclass behavior (<behavior>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <behavior>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'behavior)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control-msg:<behavior> is deprecated: use control-msg:behavior instead.")))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:active-val is deprecated.  Use control-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'vel_fw-val :lambda-list '(m))
(cl:defmethod vel_fw-val ((m <behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:vel_fw-val is deprecated.  Use control-msg:vel_fw instead.")
  (vel_fw m))

(cl:ensure-generic-function 'vel_turn-val :lambda-list '(m))
(cl:defmethod vel_turn-val ((m <behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:vel_turn-val is deprecated.  Use control-msg:vel_turn instead.")
  (vel_turn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <behavior>) ostream)
  "Serializes a message object of type '<behavior>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_fw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_turn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <behavior>) istream)
  "Deserializes a message object of type '<behavior>"
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_fw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_turn) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<behavior>)))
  "Returns string type for a message object of type '<behavior>"
  "control/behavior")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'behavior)))
  "Returns string type for a message object of type 'behavior"
  "control/behavior")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<behavior>)))
  "Returns md5sum for a message object of type '<behavior>"
  "a8468d9e957529855a64a98da7731b7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'behavior)))
  "Returns md5sum for a message object of type 'behavior"
  "a8468d9e957529855a64a98da7731b7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<behavior>)))
  "Returns full string definition for message of type '<behavior>"
  (cl:format cl:nil "bool active~%float64 vel_fw~%float64 vel_turn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'behavior)))
  "Returns full string definition for message of type 'behavior"
  (cl:format cl:nil "bool active~%float64 vel_fw~%float64 vel_turn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <behavior>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <behavior>))
  "Converts a ROS message object to a list"
  (cl:list 'behavior
    (cl:cons ':active (active msg))
    (cl:cons ':vel_fw (vel_fw msg))
    (cl:cons ':vel_turn (vel_turn msg))
))
