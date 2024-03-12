;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::Clear)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'Clear (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::CLEAR")
  (make-package "SLAM_TOOLBOX_MSGS::CLEAR"))
(unless (find-package "SLAM_TOOLBOX_MSGS::CLEARREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::CLEARREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::CLEARRESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::CLEARRESPONSE"))

(in-package "ROS")





(defclass slam_toolbox_msgs::ClearRequest
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::ClearRequest
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

(defclass slam_toolbox_msgs::ClearResponse
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::ClearResponse
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

(defclass slam_toolbox_msgs::Clear
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::Clear :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::Clear :datatype-) "slam_toolbox_msgs/Clear")
(setf (get slam_toolbox_msgs::Clear :request) slam_toolbox_msgs::ClearRequest)
(setf (get slam_toolbox_msgs::Clear :response) slam_toolbox_msgs::ClearResponse)

(defmethod slam_toolbox_msgs::ClearRequest
  (:response () (instance slam_toolbox_msgs::ClearResponse :init)))

(setf (get slam_toolbox_msgs::ClearRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::ClearRequest :datatype-) "slam_toolbox_msgs/ClearRequest")
(setf (get slam_toolbox_msgs::ClearRequest :definition-)
      "

---
")

(setf (get slam_toolbox_msgs::ClearResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::ClearResponse :datatype-) "slam_toolbox_msgs/ClearResponse")
(setf (get slam_toolbox_msgs::ClearResponse :definition-)
      "

---
")



(provide :slam_toolbox_msgs/Clear "d41d8cd98f00b204e9800998ecf8427e")


