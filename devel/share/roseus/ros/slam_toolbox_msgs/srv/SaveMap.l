;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::SaveMap)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'SaveMap (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::SAVEMAP")
  (make-package "SLAM_TOOLBOX_MSGS::SAVEMAP"))
(unless (find-package "SLAM_TOOLBOX_MSGS::SAVEMAPREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::SAVEMAPREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::SAVEMAPRESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass slam_toolbox_msgs::SaveMapRequest
  :super ros::object
  :slots (_name ))

(defmethod slam_toolbox_msgs::SaveMapRequest
  (:init
   (&key
    ((:name __name) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _name __name)
   self)
  (:name
   (&rest __name)
   (if (keywordp (car __name))
       (send* _name __name)
     (progn
       (if __name (setq _name (car __name)))
       _name)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _name
    (send _name :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _name
       (send _name :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _name
     (send _name :deserialize buf ptr-) (incf ptr- (send _name :serialization-length))
   ;;
   self)
  )

(defclass slam_toolbox_msgs::SaveMapResponse
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::SaveMapResponse
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

(defclass slam_toolbox_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::SaveMap :md5sum-) "0fce35bd9f5b27a63eb9b0e831759a0b")
(setf (get slam_toolbox_msgs::SaveMap :datatype-) "slam_toolbox_msgs/SaveMap")
(setf (get slam_toolbox_msgs::SaveMap :request) slam_toolbox_msgs::SaveMapRequest)
(setf (get slam_toolbox_msgs::SaveMap :response) slam_toolbox_msgs::SaveMapResponse)

(defmethod slam_toolbox_msgs::SaveMapRequest
  (:response () (instance slam_toolbox_msgs::SaveMapResponse :init)))

(setf (get slam_toolbox_msgs::SaveMapRequest :md5sum-) "0fce35bd9f5b27a63eb9b0e831759a0b")
(setf (get slam_toolbox_msgs::SaveMapRequest :datatype-) "slam_toolbox_msgs/SaveMapRequest")
(setf (get slam_toolbox_msgs::SaveMapRequest :definition-)
      "std_msgs/String name

================================================================================
MSG: std_msgs/String
string data
---

")

(setf (get slam_toolbox_msgs::SaveMapResponse :md5sum-) "0fce35bd9f5b27a63eb9b0e831759a0b")
(setf (get slam_toolbox_msgs::SaveMapResponse :datatype-) "slam_toolbox_msgs/SaveMapResponse")
(setf (get slam_toolbox_msgs::SaveMapResponse :definition-)
      "std_msgs/String name

================================================================================
MSG: std_msgs/String
string data
---

")



(provide :slam_toolbox_msgs/SaveMap "0fce35bd9f5b27a63eb9b0e831759a0b")


