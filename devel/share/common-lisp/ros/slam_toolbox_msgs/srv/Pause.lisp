; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude Pause-request.msg.html

(cl:defclass <Pause-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Pause-request (<Pause-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pause-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pause-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<Pause-request> is deprecated: use slam_toolbox_msgs-srv:Pause-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pause-request>) ostream)
  "Serializes a message object of type '<Pause-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pause-request>) istream)
  "Deserializes a message object of type '<Pause-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pause-request>)))
  "Returns string type for a service object of type '<Pause-request>"
  "slam_toolbox_msgs/PauseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pause-request)))
  "Returns string type for a service object of type 'Pause-request"
  "slam_toolbox_msgs/PauseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pause-request>)))
  "Returns md5sum for a message object of type '<Pause-request>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pause-request)))
  "Returns md5sum for a message object of type 'Pause-request"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pause-request>)))
  "Returns full string definition for message of type '<Pause-request>"
  (cl:format cl:nil "# trigger pause toggle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pause-request)))
  "Returns full string definition for message of type 'Pause-request"
  (cl:format cl:nil "# trigger pause toggle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pause-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pause-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Pause-request
))
;//! \htmlinclude Pause-response.msg.html

(cl:defclass <Pause-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Pause-response (<Pause-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pause-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pause-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<Pause-response> is deprecated: use slam_toolbox_msgs-srv:Pause-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Pause-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_toolbox_msgs-srv:status-val is deprecated.  Use slam_toolbox_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pause-response>) ostream)
  "Serializes a message object of type '<Pause-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pause-response>) istream)
  "Deserializes a message object of type '<Pause-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pause-response>)))
  "Returns string type for a service object of type '<Pause-response>"
  "slam_toolbox_msgs/PauseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pause-response)))
  "Returns string type for a service object of type 'Pause-response"
  "slam_toolbox_msgs/PauseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pause-response>)))
  "Returns md5sum for a message object of type '<Pause-response>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pause-response)))
  "Returns md5sum for a message object of type 'Pause-response"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pause-response>)))
  "Returns full string definition for message of type '<Pause-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pause-response)))
  "Returns full string definition for message of type 'Pause-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pause-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pause-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Pause-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Pause)))
  'Pause-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Pause)))
  'Pause-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pause)))
  "Returns string type for a service object of type '<Pause>"
  "slam_toolbox_msgs/Pause")