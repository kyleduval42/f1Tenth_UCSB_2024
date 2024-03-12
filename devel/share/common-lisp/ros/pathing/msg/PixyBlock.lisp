; Auto-generated. Do not edit!


(cl:in-package pathing-msg)


;//! \htmlinclude PixyBlock.msg.html

(cl:defclass <PixyBlock> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (signature
    :reader signature
    :initarg :signature
    :type cl:fixnum
    :initform 0)
   (roi
    :reader roi
    :initarg :roi
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PixyBlock (<PixyBlock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixyBlock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixyBlock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pathing-msg:<PixyBlock> is deprecated: use pathing-msg:PixyBlock instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PixyBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:type-val is deprecated.  Use pathing-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'signature-val :lambda-list '(m))
(cl:defmethod signature-val ((m <PixyBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:signature-val is deprecated.  Use pathing-msg:signature instead.")
  (signature m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <PixyBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:roi-val is deprecated.  Use pathing-msg:roi instead.")
  (roi m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <PixyBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:angle-val is deprecated.  Use pathing-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <PixyBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:index-val is deprecated.  Use pathing-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <PixyBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pathing-msg:age-val is deprecated.  Use pathing-msg:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PixyBlock>)))
    "Constants for message type '<PixyBlock>"
  '((:NORMAL_SIGNATURE . 0)
    (:COLOR_CODE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PixyBlock)))
    "Constants for message type 'PixyBlock"
  '((:NORMAL_SIGNATURE . 0)
    (:COLOR_CODE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixyBlock>) ostream)
  "Serializes a message object of type '<PixyBlock>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'signature)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixyBlock>) istream)
  "Deserializes a message object of type '<PixyBlock>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'signature)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixyBlock>)))
  "Returns string type for a message object of type '<PixyBlock>"
  "pathing/PixyBlock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixyBlock)))
  "Returns string type for a message object of type 'PixyBlock"
  "pathing/PixyBlock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixyBlock>)))
  "Returns md5sum for a message object of type '<PixyBlock>"
  "09dff5e34790a778002d631c87d0ce7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixyBlock)))
  "Returns md5sum for a message object of type 'PixyBlock"
  "09dff5e34790a778002d631c87d0ce7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixyBlock>)))
  "Returns full string definition for message of type '<PixyBlock>"
  (cl:format cl:nil "# signiture types~%uint16 NORMAL_SIGNATURE=0~%uint16 COLOR_CODE=1~%~%# the message.  if type==0, then angle should be ignored.~%uint16 type~%uint16 signature~%sensor_msgs/RegionOfInterest roi~%float32 angle # in radians~%uint8 index # Block index~%uint8 age # Number of frames that this block has existed for~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixyBlock)))
  "Returns full string definition for message of type 'PixyBlock"
  (cl:format cl:nil "# signiture types~%uint16 NORMAL_SIGNATURE=0~%uint16 COLOR_CODE=1~%~%# the message.  if type==0, then angle should be ignored.~%uint16 type~%uint16 signature~%sensor_msgs/RegionOfInterest roi~%float32 angle # in radians~%uint8 index # Block index~%uint8 age # Number of frames that this block has existed for~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixyBlock>))
  (cl:+ 0
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixyBlock>))
  "Converts a ROS message object to a list"
  (cl:list 'PixyBlock
    (cl:cons ':type (type msg))
    (cl:cons ':signature (signature msg))
    (cl:cons ':roi (roi msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':index (index msg))
    (cl:cons ':age (age msg))
))
