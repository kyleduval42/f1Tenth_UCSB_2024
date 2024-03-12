;; Auto-generated. Do not edit!


(when (boundp 'pathing::PixyBlock)
  (if (not (find-package "PATHING"))
    (make-package "PATHING"))
  (shadow 'PixyBlock (find-package "PATHING")))
(unless (find-package "PATHING::PIXYBLOCK")
  (make-package "PATHING::PIXYBLOCK"))

(in-package "ROS")
;;//! \htmlinclude PixyBlock.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*NORMAL_SIGNATURE*" (find-package "PATHING::PIXYBLOCK"))
(shadow '*NORMAL_SIGNATURE* (find-package "PATHING::PIXYBLOCK"))
(defconstant pathing::PixyBlock::*NORMAL_SIGNATURE* 0)
(intern "*COLOR_CODE*" (find-package "PATHING::PIXYBLOCK"))
(shadow '*COLOR_CODE* (find-package "PATHING::PIXYBLOCK"))
(defconstant pathing::PixyBlock::*COLOR_CODE* 1)

(defun pathing::PixyBlock-to-symbol (const)
  (cond
        ((= const 0) 'pathing::PixyBlock::*NORMAL_SIGNATURE*)
        ((= const 1) 'pathing::PixyBlock::*COLOR_CODE*)
        (t nil)))

(defclass pathing::PixyBlock
  :super ros::object
  :slots (_type _signature _roi _angle _index _age ))

(defmethod pathing::PixyBlock
  (:init
   (&key
    ((:type __type) 0)
    ((:signature __signature) 0)
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    ((:angle __angle) 0.0)
    ((:index __index) 0)
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _signature (round __signature))
   (setq _roi __roi)
   (setq _angle (float __angle))
   (setq _index (round __index))
   (setq _age (round __age))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:signature
   (&optional __signature)
   (if __signature (setq _signature __signature)) _signature)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; uint16 _type
    2
    ;; uint16 _signature
    2
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ;; float32 _angle
    4
    ;; uint8 _index
    1
    ;; uint8 _age
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _type
       (write-word _type s)
     ;; uint16 _signature
       (write-word _signature s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _index
       (write-byte _index s)
     ;; uint8 _age
       (write-byte _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _signature
     (setq _signature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _index
     (setq _index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pathing::PixyBlock :md5sum-) "09dff5e34790a778002d631c87d0ce7d")
(setf (get pathing::PixyBlock :datatype-) "pathing/PixyBlock")
(setf (get pathing::PixyBlock :definition-)
      "# signiture types
uint16 NORMAL_SIGNATURE=0
uint16 COLOR_CODE=1

# the message.  if type==0, then angle should be ignored.
uint16 type
uint16 signature
sensor_msgs/RegionOfInterest roi
float32 angle # in radians
uint8 index # Block index
uint8 age # Number of frames that this block has existed for

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :pathing/PixyBlock "09dff5e34790a778002d631c87d0ce7d")


