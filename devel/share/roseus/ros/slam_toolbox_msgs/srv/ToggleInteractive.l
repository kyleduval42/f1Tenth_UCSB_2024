;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::ToggleInteractive)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'ToggleInteractive (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::TOGGLEINTERACTIVE")
  (make-package "SLAM_TOOLBOX_MSGS::TOGGLEINTERACTIVE"))
(unless (find-package "SLAM_TOOLBOX_MSGS::TOGGLEINTERACTIVEREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::TOGGLEINTERACTIVEREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::TOGGLEINTERACTIVERESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::TOGGLEINTERACTIVERESPONSE"))

(in-package "ROS")





(defclass slam_toolbox_msgs::ToggleInteractiveRequest
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::ToggleInteractiveRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass slam_toolbox_msgs::ToggleInteractiveResponse
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::ToggleInteractiveResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass slam_toolbox_msgs::ToggleInteractive
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::ToggleInteractive :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::ToggleInteractive :datatype-) "slam_toolbox_msgs/ToggleInteractive")
(setf (get slam_toolbox_msgs::ToggleInteractive :request) slam_toolbox_msgs::ToggleInteractiveRequest)
(setf (get slam_toolbox_msgs::ToggleInteractive :response) slam_toolbox_msgs::ToggleInteractiveResponse)

(defmethod slam_toolbox_msgs::ToggleInteractiveRequest
  (:response () (instance slam_toolbox_msgs::ToggleInteractiveResponse :init)))

(setf (get slam_toolbox_msgs::ToggleInteractiveRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::ToggleInteractiveRequest :datatype-) "slam_toolbox_msgs/ToggleInteractiveRequest")
(setf (get slam_toolbox_msgs::ToggleInteractiveRequest :definition-)
      "
---
")

(setf (get slam_toolbox_msgs::ToggleInteractiveResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::ToggleInteractiveResponse :datatype-) "slam_toolbox_msgs/ToggleInteractiveResponse")
(setf (get slam_toolbox_msgs::ToggleInteractiveResponse :definition-)
      "
---
")



(provide :slam_toolbox_msgs/ToggleInteractive "d41d8cd98f00b204e9800998ecf8427e")


