; Auto-generated. Do not edit!


(cl:in-package pathing-msg)


;//! \htmlinclude PixyResolution.msg.html

(cl:defclass <PixyResolution> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:fixnum
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PixyResolution (<PixyResolution>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixyResolution>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixyResolution)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pathing-msg:<PixyResolution> is deprecated: use pathing-msg:PixyResolution instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <PixyResolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:width-val is deprecated.  Use pathing-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <PixyResolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:height-val is deprecated.  Use pathing-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixyResolution>) ostream)
  "Serializes a message object of type '<PixyResolution>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixyResolution>) istream)
  "Deserializes a message object of type '<PixyResolution>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixyResolution>)))
  "Returns string type for a message object of type '<PixyResolution>"
  "pathing/PixyResolution")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixyResolution)))
  "Returns string type for a message object of type 'PixyResolution"
  "pathing/PixyResolution")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixyResolution>)))
  "Returns md5sum for a message object of type '<PixyResolution>"
  "20cde1cc3b01e7f015e45dc31f8ca17d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixyResolution)))
  "Returns md5sum for a message object of type 'PixyResolution"
  "20cde1cc3b01e7f015e45dc31f8ca17d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixyResolution>)))
  "Returns full string definition for message of type '<PixyResolution>"
  (cl:format cl:nil "uint16 width~%uint16 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixyResolution)))
  "Returns full string definition for message of type 'PixyResolution"
  (cl:format cl:nil "uint16 width~%uint16 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixyResolution>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixyResolution>))
  "Converts a ROS message object to a list"
  (cl:list 'PixyResolution
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
