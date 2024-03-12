;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::SerializePoseGraph)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'SerializePoseGraph (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::SERIALIZEPOSEGRAPH")
  (make-package "SLAM_TOOLBOX_MSGS::SERIALIZEPOSEGRAPH"))
(unless (find-package "SLAM_TOOLBOX_MSGS::SERIALIZEPOSEGRAPHREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::SERIALIZEPOSEGRAPHREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::SERIALIZEPOSEGRAPHRESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::SERIALIZEPOSEGRAPHRESPONSE"))

(in-package "ROS")





(defclass slam_toolbox_msgs::SerializePoseGraphRequest
  :super ros::object
  :slots (_filename ))

(defmethod slam_toolbox_msgs::SerializePoseGraphRequest
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

(defclass slam_toolbox_msgs::SerializePoseGraphResponse
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::SerializePoseGraphResponse
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

(defclass slam_toolbox_msgs::SerializePoseGraph
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::SerializePoseGraph :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get slam_toolbox_msgs::SerializePoseGraph :datatype-) "slam_toolbox_msgs/SerializePoseGraph")
(setf (get slam_toolbox_msgs::SerializePoseGraph :request) slam_toolbox_msgs::SerializePoseGraphRequest)
(setf (get slam_toolbox_msgs::SerializePoseGraph :response) slam_toolbox_msgs::SerializePoseGraphResponse)

(defmethod slam_toolbox_msgs::SerializePoseGraphRequest
  (:response () (instance slam_toolbox_msgs::SerializePoseGraphResponse :init)))

(setf (get slam_toolbox_msgs::SerializePoseGraphRequest :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get slam_toolbox_msgs::SerializePoseGraphRequest :datatype-) "slam_toolbox_msgs/SerializePoseGraphRequest")
(setf (get slam_toolbox_msgs::SerializePoseGraphRequest :definition-)
      "string filename
---
")

(setf (get slam_toolbox_msgs::SerializePoseGraphResponse :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get slam_toolbox_msgs::SerializePoseGraphResponse :datatype-) "slam_toolbox_msgs/SerializePoseGraphResponse")
(setf (get slam_toolbox_msgs::SerializePoseGraphResponse :definition-)
      "string filename
---
")



(provide :slam_toolbox_msgs/SerializePoseGraph "030824f52a0628ead956fb9d67e66ae9")


