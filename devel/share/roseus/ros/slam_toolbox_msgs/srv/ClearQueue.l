;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::ClearQueue)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'ClearQueue (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::CLEARQUEUE")
  (make-package "SLAM_TOOLBOX_MSGS::CLEARQUEUE"))
(unless (find-package "SLAM_TOOLBOX_MSGS::CLEARQUEUEREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::CLEARQUEUEREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::CLEARQUEUERESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::CLEARQUEUERESPONSE"))

(in-package "ROS")





(defclass slam_toolbox_msgs::ClearQueueRequest
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::ClearQueueRequest
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

(defclass slam_toolbox_msgs::ClearQueueResponse
  :super ros::object
  :slots (_status ))

(defmethod slam_toolbox_msgs::ClearQueueResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass slam_toolbox_msgs::ClearQueue
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::ClearQueue :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get slam_toolbox_msgs::ClearQueue :datatype-) "slam_toolbox_msgs/ClearQueue")
(setf (get slam_toolbox_msgs::ClearQueue :request) slam_toolbox_msgs::ClearQueueRequest)
(setf (get slam_toolbox_msgs::ClearQueue :response) slam_toolbox_msgs::ClearQueueResponse)

(defmethod slam_toolbox_msgs::ClearQueueRequest
  (:response () (instance slam_toolbox_msgs::ClearQueueResponse :init)))

(setf (get slam_toolbox_msgs::ClearQueueRequest :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get slam_toolbox_msgs::ClearQueueRequest :datatype-) "slam_toolbox_msgs/ClearQueueRequest")
(setf (get slam_toolbox_msgs::ClearQueueRequest :definition-)
      "
---
bool status
")

(setf (get slam_toolbox_msgs::ClearQueueResponse :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get slam_toolbox_msgs::ClearQueueResponse :datatype-) "slam_toolbox_msgs/ClearQueueResponse")
(setf (get slam_toolbox_msgs::ClearQueueResponse :definition-)
      "
---
bool status
")



(provide :slam_toolbox_msgs/ClearQueue "3a1255d4d998bd4d6585c64639b5ee9a")


