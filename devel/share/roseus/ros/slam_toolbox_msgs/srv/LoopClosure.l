;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::LoopClosure)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'LoopClosure (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::LOOPCLOSURE")
  (make-package "SLAM_TOOLBOX_MSGS::LOOPCLOSURE"))
(unless (find-package "SLAM_TOOLBOX_MSGS::LOOPCLOSUREREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::LOOPCLOSUREREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::LOOPCLOSURERESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::LOOPCLOSURERESPONSE"))

(in-package "ROS")





(defclass slam_toolbox_msgs::LoopClosureRequest
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::LoopClosureRequest
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

(defclass slam_toolbox_msgs::LoopClosureResponse
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::LoopClosureResponse
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

(defclass slam_toolbox_msgs::LoopClosure
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::LoopClosure :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::LoopClosure :datatype-) "slam_toolbox_msgs/LoopClosure")
(setf (get slam_toolbox_msgs::LoopClosure :request) slam_toolbox_msgs::LoopClosureRequest)
(setf (get slam_toolbox_msgs::LoopClosure :response) slam_toolbox_msgs::LoopClosureResponse)

(defmethod slam_toolbox_msgs::LoopClosureRequest
  (:response () (instance slam_toolbox_msgs::LoopClosureResponse :init)))

(setf (get slam_toolbox_msgs::LoopClosureRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::LoopClosureRequest :datatype-) "slam_toolbox_msgs/LoopClosureRequest")
(setf (get slam_toolbox_msgs::LoopClosureRequest :definition-)
      "
---
")

(setf (get slam_toolbox_msgs::LoopClosureResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get slam_toolbox_msgs::LoopClosureResponse :datatype-) "slam_toolbox_msgs/LoopClosureResponse")
(setf (get slam_toolbox_msgs::LoopClosureResponse :definition-)
      "
---
")



(provide :slam_toolbox_msgs/LoopClosure "d41d8cd98f00b204e9800998ecf8427e")


