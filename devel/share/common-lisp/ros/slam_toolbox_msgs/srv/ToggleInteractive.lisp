; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude ToggleInteractive-request.msg.html

(cl:defclass <ToggleInteractive-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ToggleInteractive-request (<ToggleInteractive-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleInteractive-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleInteractive-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<ToggleInteractive-request> is deprecated: use slam_toolbox_msgs-srv:ToggleInteractive-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleInteractive-request>) ostream)
  "Serializes a message object of type '<ToggleInteractive-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleInteractive-request>) istream)
  "Deserializes a message object of type '<ToggleInteractive-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleInteractive-request>)))
  "Returns string type for a service object of type '<ToggleInteractive-request>"
  "slam_toolbox_msgs/ToggleInteractiveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleInteractive-request)))
  "Returns string type for a service object of type 'ToggleInteractive-request"
  "slam_toolbox_msgs/ToggleInteractiveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleInteractive-request>)))
  "Returns md5sum for a message object of type '<ToggleInteractive-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleInteractive-request)))
  "Returns md5sum for a message object of type 'ToggleInteractive-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleInteractive-request>)))
  "Returns full string definition for message of type '<ToggleInteractive-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleInteractive-request)))
  "Returns full string definition for message of type 'ToggleInteractive-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleInteractive-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleInteractive-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleInteractive-request
))
;//! \htmlinclude ToggleInteractive-response.msg.html

(cl:defclass <ToggleInteractive-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ToggleInteractive-response (<ToggleInteractive-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleInteractive-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleInteractive-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<ToggleInteractive-response> is deprecated: use slam_toolbox_msgs-srv:ToggleInteractive-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleInteractive-response>) ostream)
  "Serializes a message object of type '<ToggleInteractive-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleInteractive-response>) istream)
  "Deserializes a message object of type '<ToggleInteractive-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleInteractive-response>)))
  "Returns string type for a service object of type '<ToggleInteractive-response>"
  "slam_toolbox_msgs/ToggleInteractiveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleInteractive-response)))
  "Returns string type for a service object of type 'ToggleInteractive-response"
  "slam_toolbox_msgs/ToggleInteractiveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleInteractive-response>)))
  "Returns md5sum for a message object of type '<ToggleInteractive-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleInteractive-response)))
  "Returns md5sum for a message object of type 'ToggleInteractive-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleInteractive-response>)))
  "Returns full string definition for message of type '<ToggleInteractive-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleInteractive-response)))
  "Returns full string definition for message of type 'ToggleInteractive-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleInteractive-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleInteractive-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleInteractive-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToggleInteractive)))
  'ToggleInteractive-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToggleInteractive)))
  'ToggleInteractive-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleInteractive)))
  "Returns string type for a service object of type '<ToggleInteractive>"
  "slam_toolbox_msgs/ToggleInteractive")