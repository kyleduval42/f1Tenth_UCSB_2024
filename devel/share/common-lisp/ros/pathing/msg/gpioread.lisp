; Auto-generated. Do not edit!


(cl:in-package pathing-msg)


;//! \htmlinclude gpioread.msg.html

(cl:defclass <gpioread> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil)
   (pin
    :reader pin
    :initarg :pin
    :type cl:string
    :initform ""))
)

(cl:defclass gpioread (<gpioread>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpioread>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpioread)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pathing-msg:<gpioread> is deprecated: use pathing-msg:gpioread instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gpioread>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:header-val is deprecated.  Use pathing-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <gpioread>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:state-val is deprecated.  Use pathing-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <gpioread>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:pin-val is deprecated.  Use pathing-msg:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpioread>) ostream)
  "Serializes a message object of type '<gpioread>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pin))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpioread>) istream)
  "Deserializes a message object of type '<gpioread>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pin) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpioread>)))
  "Returns string type for a message object of type '<gpioread>"
  "pathing/gpioread")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpioread)))
  "Returns string type for a message object of type 'gpioread"
  "pathing/gpioread")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpioread>)))
  "Returns md5sum for a message object of type '<gpioread>"
  "a6977a6ae8bef9739a477a4e7511d644")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpioread)))
  "Returns md5sum for a message object of type 'gpioread"
  "a6977a6ae8bef9739a477a4e7511d644")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpioread>)))
  "Returns full string definition for message of type '<gpioread>"
  (cl:format cl:nil "Header header~%~%# the state of the pin. true means high, false means low.~%bool state~%~%# the pin that has changed. Represented as a string because~%# some pins are named things like '12', while others are named~%# things like 'P8' depending on your hardware.~%string pin~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpioread)))
  "Returns full string definition for message of type 'gpioread"
  (cl:format cl:nil "Header header~%~%# the state of the pin. true means high, false means low.~%bool state~%~%# the pin that has changed. Represented as a string because~%# some pins are named things like '12', while others are named~%# things like 'P8' depending on your hardware.~%string pin~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpioread>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'pin))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpioread>))
  "Converts a ROS message object to a list"
  (cl:list 'gpioread
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':pin (pin msg))
))
