; Auto-generated. Do not edit!


(cl:in-package slam_toolbox_msgs-srv)


;//! \htmlinclude DeserializePoseGraph-request.msg.html

(cl:defclass <DeserializePoseGraph-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (match_type
    :reader match_type
    :initarg :match_type
    :type cl:fixnum
    :initform 0)
   (initial_pose
    :reader initial_pose
    :initarg :initial_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass DeserializePoseGraph-request (<DeserializePoseGraph-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeserializePoseGraph-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeserializePoseGraph-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<DeserializePoseGraph-request> is deprecated: use slam_toolbox_msgs-srv:DeserializePoseGraph-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <DeserializePoseGraph-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_toolbox_msgs-srv:filename-val is deprecated.  Use slam_toolbox_msgs-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'match_type-val :lambda-list '(m))
(cl:defmethod match_type-val ((m <DeserializePoseGraph-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_toolbox_msgs-srv:match_type-val is deprecated.  Use slam_toolbox_msgs-srv:match_type instead.")
  (match_type m))

(cl:ensure-generic-function 'initial_pose-val :lambda-list '(m))
(cl:defmethod initial_pose-val ((m <DeserializePoseGraph-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_toolbox_msgs-srv:initial_pose-val is deprecated.  Use slam_toolbox_msgs-srv:initial_pose instead.")
  (initial_pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DeserializePoseGraph-request>)))
    "Constants for message type '<DeserializePoseGraph-request>"
  '((:UNSET . 0)
    (:START_AT_FIRST_NODE . 1)
    (:START_AT_GIVEN_POSE . 2)
    (:LOCALIZE_AT_POSE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DeserializePoseGraph-request)))
    "Constants for message type 'DeserializePoseGraph-request"
  '((:UNSET . 0)
    (:START_AT_FIRST_NODE . 1)
    (:START_AT_GIVEN_POSE . 2)
    (:LOCALIZE_AT_POSE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeserializePoseGraph-request>) ostream)
  "Serializes a message object of type '<DeserializePoseGraph-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:let* ((signed (cl:slot-value msg 'match_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initial_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeserializePoseGraph-request>) istream)
  "Deserializes a message object of type '<DeserializePoseGraph-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'match_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initial_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeserializePoseGraph-request>)))
  "Returns string type for a service object of type '<DeserializePoseGraph-request>"
  "slam_toolbox_msgs/DeserializePoseGraphRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeserializePoseGraph-request)))
  "Returns string type for a service object of type 'DeserializePoseGraph-request"
  "slam_toolbox_msgs/DeserializePoseGraphRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeserializePoseGraph-request>)))
  "Returns md5sum for a message object of type '<DeserializePoseGraph-request>"
  "29a9bb432c3daccc49d63131eece4576")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeserializePoseGraph-request)))
  "Returns md5sum for a message object of type 'DeserializePoseGraph-request"
  "29a9bb432c3daccc49d63131eece4576")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeserializePoseGraph-request>)))
  "Returns full string definition for message of type '<DeserializePoseGraph-request>"
  (cl:format cl:nil "int8 UNSET = 0~%int8 START_AT_FIRST_NODE = 1~%int8 START_AT_GIVEN_POSE = 2~%int8 LOCALIZE_AT_POSE = 3~%~%# inital_pose should be Map -> base_frame (parameter, generally base_link)~%#~%~%string filename~%int8 match_type~%geometry_msgs/Pose2D initial_pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeserializePoseGraph-request)))
  "Returns full string definition for message of type 'DeserializePoseGraph-request"
  (cl:format cl:nil "int8 UNSET = 0~%int8 START_AT_FIRST_NODE = 1~%int8 START_AT_GIVEN_POSE = 2~%int8 LOCALIZE_AT_POSE = 3~%~%# inital_pose should be Map -> base_frame (parameter, generally base_link)~%#~%~%string filename~%int8 match_type~%geometry_msgs/Pose2D initial_pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeserializePoseGraph-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initial_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeserializePoseGraph-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeserializePoseGraph-request
    (cl:cons ':filename (filename msg))
    (cl:cons ':match_type (match_type msg))
    (cl:cons ':initial_pose (initial_pose msg))
))
;//! \htmlinclude DeserializePoseGraph-response.msg.html

(cl:defclass <DeserializePoseGraph-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DeserializePoseGraph-response (<DeserializePoseGraph-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeserializePoseGraph-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeserializePoseGraph-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_toolbox_msgs-srv:<DeserializePoseGraph-response> is deprecated: use slam_toolbox_msgs-srv:DeserializePoseGraph-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeserializePoseGraph-response>) ostream)
  "Serializes a message object of type '<DeserializePoseGraph-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeserializePoseGraph-response>) istream)
  "Deserializes a message object of type '<DeserializePoseGraph-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeserializePoseGraph-response>)))
  "Returns string type for a service object of type '<DeserializePoseGraph-response>"
  "slam_toolbox_msgs/DeserializePoseGraphResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeserializePoseGraph-response)))
  "Returns string type for a service object of type 'DeserializePoseGraph-response"
  "slam_toolbox_msgs/DeserializePoseGraphResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeserializePoseGraph-response>)))
  "Returns md5sum for a message object of type '<DeserializePoseGraph-response>"
  "29a9bb432c3daccc49d63131eece4576")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeserializePoseGraph-response)))
  "Returns md5sum for a message object of type 'DeserializePoseGraph-response"
  "29a9bb432c3daccc49d63131eece4576")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeserializePoseGraph-response>)))
  "Returns full string definition for message of type '<DeserializePoseGraph-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeserializePoseGraph-response)))
  "Returns full string definition for message of type 'DeserializePoseGraph-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeserializePoseGraph-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeserializePoseGraph-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeserializePoseGraph-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeserializePoseGraph)))
  'DeserializePoseGraph-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeserializePoseGraph)))
  'DeserializePoseGraph-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeserializePoseGraph)))
  "Returns string type for a service object of type '<DeserializePoseGraph>"
  "slam_toolbox_msgs/DeserializePoseGraph")