; Auto-generated. Do not edit!


(cl:in-package class_exercises-srv)


;//! \htmlinclude DistanceTo-request.msg.html

(cl:defclass <DistanceTo-request> (roslisp-msg-protocol:ros-message)
  ((pos_x
    :reader pos_x
    :initarg :pos_x
    :type cl:float
    :initform 0.0)
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass DistanceTo-request (<DistanceTo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DistanceTo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DistanceTo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name class_exercises-srv:<DistanceTo-request> is deprecated: use class_exercises-srv:DistanceTo-request instead.")))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <DistanceTo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader class_exercises-srv:pos_x-val is deprecated.  Use class_exercises-srv:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <DistanceTo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader class_exercises-srv:pos_y-val is deprecated.  Use class_exercises-srv:pos_y instead.")
  (pos_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DistanceTo-request>) ostream)
  "Serializes a message object of type '<DistanceTo-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DistanceTo-request>) istream)
  "Deserializes a message object of type '<DistanceTo-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DistanceTo-request>)))
  "Returns string type for a service object of type '<DistanceTo-request>"
  "class_exercises/DistanceToRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DistanceTo-request)))
  "Returns string type for a service object of type 'DistanceTo-request"
  "class_exercises/DistanceToRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DistanceTo-request>)))
  "Returns md5sum for a message object of type '<DistanceTo-request>"
  "ac27abe74468bad30bf32e9b9ef409fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DistanceTo-request)))
  "Returns md5sum for a message object of type 'DistanceTo-request"
  "ac27abe74468bad30bf32e9b9ef409fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DistanceTo-request>)))
  "Returns full string definition for message of type '<DistanceTo-request>"
  (cl:format cl:nil "float32 pos_x~%float32 pos_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DistanceTo-request)))
  "Returns full string definition for message of type 'DistanceTo-request"
  (cl:format cl:nil "float32 pos_x~%float32 pos_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DistanceTo-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DistanceTo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DistanceTo-request
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
))
;//! \htmlinclude DistanceTo-response.msg.html

(cl:defclass <DistanceTo-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass DistanceTo-response (<DistanceTo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DistanceTo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DistanceTo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name class_exercises-srv:<DistanceTo-response> is deprecated: use class_exercises-srv:DistanceTo-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <DistanceTo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader class_exercises-srv:distance-val is deprecated.  Use class_exercises-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DistanceTo-response>) ostream)
  "Serializes a message object of type '<DistanceTo-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DistanceTo-response>) istream)
  "Deserializes a message object of type '<DistanceTo-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DistanceTo-response>)))
  "Returns string type for a service object of type '<DistanceTo-response>"
  "class_exercises/DistanceToResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DistanceTo-response)))
  "Returns string type for a service object of type 'DistanceTo-response"
  "class_exercises/DistanceToResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DistanceTo-response>)))
  "Returns md5sum for a message object of type '<DistanceTo-response>"
  "ac27abe74468bad30bf32e9b9ef409fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DistanceTo-response)))
  "Returns md5sum for a message object of type 'DistanceTo-response"
  "ac27abe74468bad30bf32e9b9ef409fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DistanceTo-response>)))
  "Returns full string definition for message of type '<DistanceTo-response>"
  (cl:format cl:nil "float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DistanceTo-response)))
  "Returns full string definition for message of type 'DistanceTo-response"
  (cl:format cl:nil "float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DistanceTo-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DistanceTo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DistanceTo-response
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DistanceTo)))
  'DistanceTo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DistanceTo)))
  'DistanceTo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DistanceTo)))
  "Returns string type for a service object of type '<DistanceTo>"
  "class_exercises/DistanceTo")