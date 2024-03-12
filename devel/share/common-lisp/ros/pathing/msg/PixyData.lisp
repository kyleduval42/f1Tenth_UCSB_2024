; Auto-generated. Do not edit!


(cl:in-package pathing-msg)


;//! \htmlinclude PixyData.msg.html

(cl:defclass <PixyData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (blocks
    :reader blocks
    :initarg :blocks
    :type (cl:vector pathing-msg:PixyBlock)
   :initform (cl:make-array 0 :element-type 'pathing-msg:PixyBlock :initial-element (cl:make-instance 'pathing-msg:PixyBlock))))
)

(cl:defclass PixyData (<PixyData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixyData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixyData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pathing-msg:<PixyData> is deprecated: use pathing-msg:PixyData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PixyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:header-val is deprecated.  Use pathing-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'blocks-val :lambda-list '(m))
(cl:defmethod blocks-val ((m <PixyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:blocks-val is deprecated.  Use pathing-msg:blocks instead.")
  (blocks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixyData>) ostream)
  "Serializes a message object of type '<PixyData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blocks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blocks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixyData>) istream)
  "Deserializes a message object of type '<PixyData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blocks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blocks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pathing-msg:PixyBlock))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixyData>)))
  "Returns string type for a message object of type '<PixyData>"
  "pathing/PixyData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixyData)))
  "Returns string type for a message object of type 'PixyData"
  "pathing/PixyData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixyData>)))
  "Returns md5sum for a message object of type '<PixyData>"
  "d7b5179bbac08dbbbf116047daeca32b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixyData)))
  "Returns md5sum for a message object of type 'PixyData"
  "d7b5179bbac08dbbbf116047daeca32b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixyData>)))
  "Returns full string definition for message of type '<PixyData>"
  (cl:format cl:nil "std_msgs/Header header~%PixyBlock[] blocks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pathing/PixyBlock~%# signiture types~%uint16 NORMAL_SIGNATURE=0~%uint16 COLOR_CODE=1~%~%# the message.  if type==0, then angle should be ignored.~%uint16 type~%uint16 signature~%sensor_msgs/RegionOfInterest roi~%float32 angle # in radians~%uint8 index # Block index~%uint8 age # Number of frames that this block has existed for~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixyData)))
  "Returns full string definition for message of type 'PixyData"
  (cl:format cl:nil "std_msgs/Header header~%PixyBlock[] blocks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pathing/PixyBlock~%# signiture types~%uint16 NORMAL_SIGNATURE=0~%uint16 COLOR_CODE=1~%~%# the message.  if type==0, then angle should be ignored.~%uint16 type~%uint16 signature~%sensor_msgs/RegionOfInterest roi~%float32 angle # in radians~%uint8 index # Block index~%uint8 age # Number of frames that this block has existed for~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixyData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blocks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixyData>))
  "Converts a ROS message object to a list"
  (cl:list 'PixyData
    (cl:cons ':header (header msg))
    (cl:cons ':blocks (blocks msg))
))
