; Auto-generated. Do not edit!


(cl:in-package irobotcreate2-msg)


;//! \htmlinclude Note.msg.html

(cl:defclass <Note> (roslisp-msg-protocol:ros-message)
  ((note
    :reader note
    :initarg :note
    :type cl:fixnum
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Note (<Note>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Note>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Note)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irobotcreate2-msg:<Note> is deprecated: use irobotcreate2-msg:Note instead.")))

(cl:ensure-generic-function 'note-val :lambda-list '(m))
(cl:defmethod note-val ((m <Note>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:note-val is deprecated.  Use irobotcreate2-msg:note instead.")
  (note m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Note>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irobotcreate2-msg:length-val is deprecated.  Use irobotcreate2-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Note>) ostream)
  "Serializes a message object of type '<Note>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'note)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Note>) istream)
  "Deserializes a message object of type '<Note>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'note)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Note>)))
  "Returns string type for a message object of type '<Note>"
  "irobotcreate2/Note")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Note)))
  "Returns string type for a message object of type 'Note"
  "irobotcreate2/Note")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Note>)))
  "Returns md5sum for a message object of type '<Note>"
  "4d9b44801be38c06e26bc85d74c2792b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Note)))
  "Returns md5sum for a message object of type 'Note"
  "4d9b44801be38c06e26bc85d74c2792b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Note>)))
  "Returns full string definition for message of type '<Note>"
  (cl:format cl:nil "uint8 note~%uint8 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Note)))
  "Returns full string definition for message of type 'Note"
  (cl:format cl:nil "uint8 note~%uint8 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Note>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Note>))
  "Converts a ROS message object to a list"
  (cl:list 'Note
    (cl:cons ':note (note msg))
    (cl:cons ':length (length msg))
))
