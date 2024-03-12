;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::Pause)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'Pause (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::PAUSE")
  (make-package "SLAM_TOOLBOX_MSGS::PAUSE"))
(unless (find-package "SLAM_TOOLBOX_MSGS::PAUSEREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::PAUSEREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::PAUSERESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::PAUSERESPONSE"))

(in-package "ROS")





(defclass slam_toolbox_msgs::PauseRequest
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::PauseRequest
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

(defclass slam_toolbox_msgs::PauseResponse
  :super ros::object
  :slots (_status ))

(defmethod slam_toolbox_msgs::PauseResponse
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

(defclass slam_toolbox_msgs::Pause
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::Pause :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get slam_toolbox_msgs::Pause :datatype-) "slam_toolbox_msgs/Pause")
(setf (get slam_toolbox_msgs::Pause :request) slam_toolbox_msgs::PauseRequest)
(setf (get slam_toolbox_msgs::Pause :response) slam_toolbox_msgs::PauseResponse)

(defmethod slam_toolbox_msgs::PauseRequest
  (:response () (instance slam_toolbox_msgs::PauseResponse :init)))

(setf (get slam_toolbox_msgs::PauseRequest :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get slam_toolbox_msgs::PauseRequest :datatype-) "slam_toolbox_msgs/PauseRequest")
(setf (get slam_toolbox_msgs::PauseRequest :definition-)
      "# trigger pause toggle

---
bool status
")

(setf (get slam_toolbox_msgs::PauseResponse :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get slam_toolbox_msgs::PauseResponse :datatype-) "slam_toolbox_msgs/PauseResponse")
(setf (get slam_toolbox_msgs::PauseResponse :definition-)
      "# trigger pause toggle

---
bool status
")



(provide :slam_toolbox_msgs/Pause "3a1255d4d998bd4d6585c64639b5ee9a")


