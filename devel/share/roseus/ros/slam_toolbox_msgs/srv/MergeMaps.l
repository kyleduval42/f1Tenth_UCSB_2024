;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::MergeMaps)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'MergeMaps (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::MERGEMAPS")
  (make-package "SLAM_TOOLBOX_MSGS::MERGEMAPS"))
(unless (find-package "SLAM_TOOLBOX_MSGS::MERGEMAPSREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::MERGEMAPSREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::MERGEMAPSRESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::MERGEMAPSRESPONSE"))

(in-package "ROS")





(defclass slam_toolbox_msgs::MergeMapsRequest
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::MergeMapsRequest
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

(defclass slam_toolbox_msgs::MergeMapsResponse
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::MergeMapsResponse
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

(defclass slam_toolbox_msgs::MergeMaps
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::MergeMaps :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::MergeMaps :datatype-) "slam_toolbox_msgs/MergeMaps")
(setf (get slam_toolbox_msgs::MergeMaps :request) slam_toolbox_msgs::MergeMapsRequest)
(setf (get slam_toolbox_msgs::MergeMaps :response) slam_toolbox_msgs::MergeMapsResponse)

(defmethod slam_toolbox_msgs::MergeMapsRequest
  (:response () (instance slam_toolbox_msgs::MergeMapsResponse :init)))

(setf (get slam_toolbox_msgs::MergeMapsRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::MergeMapsRequest :datatype-) "slam_toolbox_msgs/MergeMapsRequest")
(setf (get slam_toolbox_msgs::MergeMapsRequest :definition-)
      "
---
")

(setf (get slam_toolbox_msgs::MergeMapsResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::MergeMapsResponse :datatype-) "slam_toolbox_msgs/MergeMapsResponse")
(setf (get slam_toolbox_msgs::MergeMapsResponse :definition-)
      "
---
")



(provide :slam_toolbox_msgs/MergeMaps "d41d8cd98f00b204e9800998ecf8427e")


