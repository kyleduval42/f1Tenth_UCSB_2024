; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude SerializePoseGraph-request.msg.html

(cl:defclass <SerializePoseGraph-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass SerializePoseGraph-request (<SerializePoseGraph-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerializePoseGraph-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerializePoseGraph-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<SerializePoseGraph-request> is deprecated: use slam_toolbox_msgs-srv:SerializePoseGraph-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SerializePoseGraph-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_toolbox_msgs-srv:filename-val is deprecated.  Use slam_toolbox_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerializePoseGraph-request>) ostream)
  "Serializes a message object of type '<SerializePoseGraph-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerializePoseGraph-request>) istream)
  "Deserializes a message object of type '<SerializePoseGraph-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerializePoseGraph-request>)))
  "Returns string type for a service object of type '<SerializePoseGraph-request>"
  "slam_toolbox_msgs/SerializePoseGraphRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerializePoseGraph-request)))
  "Returns string type for a service object of type 'SerializePoseGraph-request"
  "slam_toolbox_msgs/SerializePoseGraphRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerializePoseGraph-request>)))
  "Returns md5sum for a message object of type '<SerializePoseGraph-request>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerializePoseGraph-request)))
  "Returns md5sum for a message object of type 'SerializePoseGraph-request"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerializePoseGraph-request>)))
  "Returns full string definition for message of type '<SerializePoseGraph-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerializePoseGraph-request)))
  "Returns full string definition for message of type 'SerializePoseGraph-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerializePoseGraph-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerializePoseGraph-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerializePoseGraph-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude SerializePoseGraph-response.msg.html

(cl:defclass <SerializePoseGraph-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SerializePoseGraph-response (<SerializePoseGraph-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerializePoseGraph-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerializePoseGraph-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<SerializePoseGraph-response> is deprecated: use slam_toolbox_msgs-srv:SerializePoseGraph-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerializePoseGraph-response>) ostream)
  "Serializes a message object of type '<SerializePoseGraph-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerializePoseGraph-response>) istream)
  "Deserializes a message object of type '<SerializePoseGraph-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerializePoseGraph-response>)))
  "Returns string type for a service object of type '<SerializePoseGraph-response>"
  "slam_toolbox_msgs/SerializePoseGraphResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerializePoseGraph-response)))
  "Returns string type for a service object of type 'SerializePoseGraph-response"
  "slam_toolbox_msgs/SerializePoseGraphResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerializePoseGraph-response>)))
  "Returns md5sum for a message object of type '<SerializePoseGraph-response>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerializePoseGraph-response)))
  "Returns md5sum for a message object of type 'SerializePoseGraph-response"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerializePoseGraph-response>)))
  "Returns full string definition for message of type '<SerializePoseGraph-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerializePoseGraph-response)))
  "Returns full string definition for message of type 'SerializePoseGraph-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerializePoseGraph-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerializePoseGraph-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerializePoseGraph-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerializePoseGraph)))
  'SerializePoseGraph-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerializePoseGraph)))
  'SerializePoseGraph-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerializePoseGraph)))
  "Returns string type for a service object of type '<SerializePoseGraph>"
  "slam_toolbox_msgs/SerializePoseGraph")