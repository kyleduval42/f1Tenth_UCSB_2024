;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::AddSubmap)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'AddSubmap (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::ADDSUBMAP")
  (make-package "SLAM_TOOLBOX_MSGS::ADDSUBMAP"))
(unless (find-package "SLAM_TOOLBOX_MSGS::ADDSUBMAPREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::ADDSUBMAPREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::ADDSUBMAPRESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::ADDSUBMAPRESPONSE"))

(in-package "ROS")





(defclass slam_toolbox_msgs::AddSubmapRequest
  :super ros::object
  :slots (_filename ))

(defmethod slam_toolbox_msgs::AddSubmapRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass slam_toolbox_msgs::AddSubmapResponse
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::AddSubmapResponse
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

(defclass slam_toolbox_msgs::AddSubmap
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::AddSubmap :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get slam_toolbox_msgs::AddSubmap :datatype-) "slam_toolbox_msgs/AddSubmap")
(setf (get slam_toolbox_msgs::AddSubmap :request) slam_toolbox_msgs::AddSubmapRequest)
(setf (get slam_toolbox_msgs::AddSubmap :response) slam_toolbox_msgs::AddSubmapResponse)

(defmethod slam_toolbox_msgs::AddSubmapRequest
  (:response () (instance slam_toolbox_msgs::AddSubmapResponse :init)))

(setf (get slam_toolbox_msgs::AddSubmapRequest :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get slam_toolbox_msgs::AddSubmapRequest :datatype-) "slam_toolbox_msgs/AddSubmapRequest")
(setf (get slam_toolbox_msgs::AddSubmapRequest :definition-)
      "string filename
---
")

(setf (get slam_toolbox_msgs::AddSubmapResponse :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get slam_toolbox_msgs::AddSubmapResponse :datatype-) "slam_toolbox_msgs/AddSubmapResponse")
(setf (get slam_toolbox_msgs::AddSubmapResponse :definition-)
      "string filename
---
")



(provide :slam_toolbox_msgs/AddSubmap "030824f52a0628ead956fb9d67e66ae9")


