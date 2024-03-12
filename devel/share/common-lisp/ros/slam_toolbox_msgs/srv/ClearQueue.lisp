; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude ClearQueue-request.msg.html

(cl:defclass <ClearQueue-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearQueue-request (<ClearQueue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearQueue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearQueue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<ClearQueue-request> is deprecated: use slam_toolbox_msgs-srv:ClearQueue-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearQueue-request>) ostream)
  "Serializes a message object of type '<ClearQueue-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearQueue-request>) istream)
  "Deserializes a message object of type '<ClearQueue-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearQueue-request>)))
  "Returns string type for a service object of type '<ClearQueue-request>"
  "slam_toolbox_msgs/ClearQueueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearQueue-request)))
  "Returns string type for a service object of type 'ClearQueue-request"
  "slam_toolbox_msgs/ClearQueueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearQueue-request>)))
  "Returns md5sum for a message object of type '<ClearQueue-request>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearQueue-request)))
  "Returns md5sum for a message object of type 'ClearQueue-request"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearQueue-request>)))
  "Returns full string definition for message of type '<ClearQueue-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearQueue-request)))
  "Returns full string definition for message of type 'ClearQueue-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearQueue-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearQueue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearQueue-request
))
;//! \htmlinclude ClearQueue-response.msg.html

(cl:defclass <ClearQueue-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearQueue-response (<ClearQueue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearQueue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearQueue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<ClearQueue-response> is deprecated: use slam_toolbox_msgs-srv:ClearQueue-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ClearQueue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_toolbox_msgs-srv:status-val is deprecated.  Use slam_toolbox_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearQueue-response>) ostream)
  "Serializes a message object of type '<ClearQueue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearQueue-response>) istream)
  "Deserializes a message object of type '<ClearQueue-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearQueue-response>)))
  "Returns string type for a service object of type '<ClearQueue-response>"
  "slam_toolbox_msgs/ClearQueueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearQueue-response)))
  "Returns string type for a service object of type 'ClearQueue-response"
  "slam_toolbox_msgs/ClearQueueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearQueue-response>)))
  "Returns md5sum for a message object of type '<ClearQueue-response>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearQueue-response)))
  "Returns md5sum for a message object of type 'ClearQueue-response"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearQueue-response>)))
  "Returns full string definition for message of type '<ClearQueue-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearQueue-response)))
  "Returns full string definition for message of type 'ClearQueue-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearQueue-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearQueue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearQueue-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearQueue)))
  'ClearQueue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearQueue)))
  'ClearQueue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearQueue)))
  "Returns string type for a service object of type '<ClearQueue>"
  "slam_toolbox_msgs/ClearQueue")