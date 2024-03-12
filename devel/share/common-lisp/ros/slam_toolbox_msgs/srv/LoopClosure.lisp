; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude LoopClosure-request.msg.html

(cl:defclass <LoopClosure-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoopClosure-request (<LoopClosure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopClosure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopClosure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<LoopClosure-request> is deprecated: use slam_toolbox_msgs-srv:LoopClosure-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopClosure-request>) ostream)
  "Serializes a message object of type '<LoopClosure-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopClosure-request>) istream)
  "Deserializes a message object of type '<LoopClosure-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopClosure-request>)))
  "Returns string type for a service object of type '<LoopClosure-request>"
  "slam_toolbox_msgs/LoopClosureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopClosure-request)))
  "Returns string type for a service object of type 'LoopClosure-request"
  "slam_toolbox_msgs/LoopClosureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopClosure-request>)))
  "Returns md5sum for a message object of type '<LoopClosure-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopClosure-request)))
  "Returns md5sum for a message object of type 'LoopClosure-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopClosure-request>)))
  "Returns full string definition for message of type '<LoopClosure-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopClosure-request)))
  "Returns full string definition for message of type 'LoopClosure-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopClosure-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopClosure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopClosure-request
))
;//! \htmlinclude LoopClosure-response.msg.html

(cl:defclass <LoopClosure-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoopClosure-response (<LoopClosure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopClosure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopClosure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<LoopClosure-response> is deprecated: use slam_toolbox_msgs-srv:LoopClosure-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopClosure-response>) ostream)
  "Serializes a message object of type '<LoopClosure-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopClosure-response>) istream)
  "Deserializes a message object of type '<LoopClosure-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopClosure-response>)))
  "Returns string type for a service object of type '<LoopClosure-response>"
  "slam_toolbox_msgs/LoopClosureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopClosure-response)))
  "Returns string type for a service object of type 'LoopClosure-response"
  "slam_toolbox_msgs/LoopClosureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopClosure-response>)))
  "Returns md5sum for a message object of type '<LoopClosure-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopClosure-response)))
  "Returns md5sum for a message object of type 'LoopClosure-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopClosure-response>)))
  "Returns full string definition for message of type '<LoopClosure-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopClosure-response)))
  "Returns full string definition for message of type 'LoopClosure-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopClosure-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopClosure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopClosure-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoopClosure)))
  'LoopClosure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoopClosure)))
  'LoopClosure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopClosure)))
  "Returns string type for a service object of type '<LoopClosure>"
  "slam_toolbox_msgs/LoopClosure")