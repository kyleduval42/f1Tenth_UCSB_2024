; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude AddSubmap-request.msg.html

(cl:defclass <AddSubmap-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass AddSubmap-request (<AddSubmap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddSubmap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddSubmap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<AddSubmap-request> is deprecated: use slam_toolbox_msgs-srv:AddSubmap-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <AddSubmap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_toolbox_msgs-srv:filename-val is deprecated.  Use slam_toolbox_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddSubmap-request>) ostream)
  "Serializes a message object of type '<AddSubmap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddSubmap-request>) istream)
  "Deserializes a message object of type '<AddSubmap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddSubmap-request>)))
  "Returns string type for a service object of type '<AddSubmap-request>"
  "slam_toolbox_msgs/AddSubmapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSubmap-request)))
  "Returns string type for a service object of type 'AddSubmap-request"
  "slam_toolbox_msgs/AddSubmapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddSubmap-request>)))
  "Returns md5sum for a message object of type '<AddSubmap-request>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddSubmap-request)))
  "Returns md5sum for a message object of type 'AddSubmap-request"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddSubmap-request>)))
  "Returns full string definition for message of type '<AddSubmap-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddSubmap-request)))
  "Returns full string definition for message of type 'AddSubmap-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddSubmap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddSubmap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddSubmap-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude AddSubmap-response.msg.html

(cl:defclass <AddSubmap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddSubmap-response (<AddSubmap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddSubmap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddSubmap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<AddSubmap-response> is deprecated: use slam_toolbox_msgs-srv:AddSubmap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddSubmap-response>) ostream)
  "Serializes a message object of type '<AddSubmap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddSubmap-response>) istream)
  "Deserializes a message object of type '<AddSubmap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddSubmap-response>)))
  "Returns string type for a service object of type '<AddSubmap-response>"
  "slam_toolbox_msgs/AddSubmapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSubmap-response)))
  "Returns string type for a service object of type 'AddSubmap-response"
  "slam_toolbox_msgs/AddSubmapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddSubmap-response>)))
  "Returns md5sum for a message object of type '<AddSubmap-response>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddSubmap-response)))
  "Returns md5sum for a message object of type 'AddSubmap-response"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddSubmap-response>)))
  "Returns full string definition for message of type '<AddSubmap-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddSubmap-response)))
  "Returns full string definition for message of type 'AddSubmap-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddSubmap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddSubmap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddSubmap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddSubmap)))
  'AddSubmap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddSubmap)))
  'AddSubmap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSubmap)))
  "Returns string type for a service object of type '<AddSubmap>"
  "slam_toolbox_msgs/AddSubmap")