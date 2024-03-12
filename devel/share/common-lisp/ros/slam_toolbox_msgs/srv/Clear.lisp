; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude Clear-request.msg.html

(cl:defclass <Clear-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Clear-request (<Clear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Clear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Clear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<Clear-request> is deprecated: use slam_toolbox_msgs-srv:Clear-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Clear-request>) ostream)
  "Serializes a message object of type '<Clear-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Clear-request>) istream)
  "Deserializes a message object of type '<Clear-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Clear-request>)))
  "Returns string type for a service object of type '<Clear-request>"
  "slam_toolbox_msgs/ClearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clear-request)))
  "Returns string type for a service object of type 'Clear-request"
  "slam_toolbox_msgs/ClearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Clear-request>)))
  "Returns md5sum for a message object of type '<Clear-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Clear-request)))
  "Returns md5sum for a message object of type 'Clear-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Clear-request>)))
  "Returns full string definition for message of type '<Clear-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Clear-request)))
  "Returns full string definition for message of type 'Clear-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Clear-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Clear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Clear-request
))
;//! \htmlinclude Clear-response.msg.html

(cl:defclass <Clear-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Clear-response (<Clear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Clear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Clear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<Clear-response> is deprecated: use slam_toolbox_msgs-srv:Clear-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Clear-response>) ostream)
  "Serializes a message object of type '<Clear-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Clear-response>) istream)
  "Deserializes a message object of type '<Clear-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Clear-response>)))
  "Returns string type for a service object of type '<Clear-response>"
  "slam_toolbox_msgs/ClearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clear-response)))
  "Returns string type for a service object of type 'Clear-response"
  "slam_toolbox_msgs/ClearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Clear-response>)))
  "Returns md5sum for a message object of type '<Clear-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Clear-response)))
  "Returns md5sum for a message object of type 'Clear-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Clear-response>)))
  "Returns full string definition for message of type '<Clear-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Clear-response)))
  "Returns full string definition for message of type 'Clear-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Clear-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Clear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Clear-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Clear)))
  'Clear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Clear)))
  'Clear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clear)))
  "Returns string type for a service object of type '<Clear>"
  "slam_toolbox_msgs/Clear")