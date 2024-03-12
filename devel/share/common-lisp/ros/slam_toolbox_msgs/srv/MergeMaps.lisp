; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude MergeMaps-request.msg.html

(cl:defclass <MergeMaps-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MergeMaps-request (<MergeMaps-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MergeMaps-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MergeMaps-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<MergeMaps-request> is deprecated: use slam_toolbox_msgs-srv:MergeMaps-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MergeMaps-request>) ostream)
  "Serializes a message object of type '<MergeMaps-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MergeMaps-request>) istream)
  "Deserializes a message object of type '<MergeMaps-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MergeMaps-request>)))
  "Returns string type for a service object of type '<MergeMaps-request>"
  "slam_toolbox_msgs/MergeMapsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergeMaps-request)))
  "Returns string type for a service object of type 'MergeMaps-request"
  "slam_toolbox_msgs/MergeMapsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MergeMaps-request>)))
  "Returns md5sum for a message object of type '<MergeMaps-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MergeMaps-request)))
  "Returns md5sum for a message object of type 'MergeMaps-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MergeMaps-request>)))
  "Returns full string definition for message of type '<MergeMaps-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MergeMaps-request)))
  "Returns full string definition for message of type 'MergeMaps-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MergeMaps-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MergeMaps-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MergeMaps-request
))
;//! \htmlinclude MergeMaps-response.msg.html

(cl:defclass <MergeMaps-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MergeMaps-response (<MergeMaps-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MergeMaps-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MergeMaps-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<MergeMaps-response> is deprecated: use slam_toolbox_msgs-srv:MergeMaps-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MergeMaps-response>) ostream)
  "Serializes a message object of type '<MergeMaps-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MergeMaps-response>) istream)
  "Deserializes a message object of type '<MergeMaps-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MergeMaps-response>)))
  "Returns string type for a service object of type '<MergeMaps-response>"
  "slam_toolbox_msgs/MergeMapsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergeMaps-response)))
  "Returns string type for a service object of type 'MergeMaps-response"
  "slam_toolbox_msgs/MergeMapsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MergeMaps-response>)))
  "Returns md5sum for a message object of type '<MergeMaps-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MergeMaps-response)))
  "Returns md5sum for a message object of type 'MergeMaps-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MergeMaps-response>)))
  "Returns full string definition for message of type '<MergeMaps-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MergeMaps-response)))
  "Returns full string definition for message of type 'MergeMaps-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MergeMaps-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MergeMaps-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MergeMaps-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MergeMaps)))
  'MergeMaps-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MergeMaps)))
  'MergeMaps-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergeMaps)))
  "Returns string type for a service object of type '<MergeMaps>"
  "slam_toolbox_msgs/MergeMaps")