;; Auto-generated. Do not edit!


(when (boundp 'slam_toolbox_msgs::DeserializePoseGraph)
  (if (not (find-package "SLAM_TOOLBOX_MSGS"))
    (make-package "SLAM_TOOLBOX_MSGS"))
  (shadow 'DeserializePoseGraph (find-package "SLAM_TOOLBOX_MSGS")))
(unless (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPH")
  (make-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPH"))
(unless (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST")
  (make-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(unless (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHRESPONSE")
  (make-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*UNSET*" (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(shadow '*UNSET* (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(defconstant slam_toolbox_msgs::DeserializePoseGraphRequest::*UNSET* 0)
(intern "*START_AT_FIRST_NODE*" (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(shadow '*START_AT_FIRST_NODE* (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(defconstant slam_toolbox_msgs::DeserializePoseGraphRequest::*START_AT_FIRST_NODE* 1)
(intern "*START_AT_GIVEN_POSE*" (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(shadow '*START_AT_GIVEN_POSE* (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(defconstant slam_toolbox_msgs::DeserializePoseGraphRequest::*START_AT_GIVEN_POSE* 2)
(intern "*LOCALIZE_AT_POSE*" (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(shadow '*LOCALIZE_AT_POSE* (find-package "SLAM_TOOLBOX_MSGS::DESERIALIZEPOSEGRAPHREQUEST"))
(defconstant slam_toolbox_msgs::DeserializePoseGraphRequest::*LOCALIZE_AT_POSE* 3)

(defun slam_toolbox_msgs::DeserializePoseGraphRequest-to-symbol (const)
  (cond
        ((= const 0) 'slam_toolbox_msgs::DeserializePoseGraphRequest::*UNSET*)
        ((= const 1) 'slam_toolbox_msgs::DeserializePoseGraphRequest::*START_AT_FIRST_NODE*)
        ((= const 2) 'slam_toolbox_msgs::DeserializePoseGraphRequest::*START_AT_GIVEN_POSE*)
        ((= const 3) 'slam_toolbox_msgs::DeserializePoseGraphRequest::*LOCALIZE_AT_POSE*)
        (t nil)))

(defclass slam_toolbox_msgs::DeserializePoseGraphRequest
  :super ros::object
  :slots (_filename _match_type _initial_pose ))

(defmethod slam_toolbox_msgs::DeserializePoseGraphRequest
  (:init
   (&key
    ((:filename __filename) "")
    ((:match_type __match_type) 0)
    ((:initial_pose __initial_pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _filename (string __filename))
   (setq _match_type (round __match_type))
   (setq _initial_pose __initial_pose)
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:match_type
   (&optional __match_type)
   (if __match_type (setq _match_type __match_type)) _match_type)
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ;; int8 _match_type
    1
    ;; geometry_msgs/Pose2D _initial_pose
    (send _initial_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; int8 _match_type
       (write-byte _match_type s)
     ;; geometry_msgs/Pose2D _initial_pose
       (send _initial_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _match_type
     (setq _match_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _match_type 127) (setq _match_type (- _match_type 256)))
   ;; geometry_msgs/Pose2D _initial_pose
     (send _initial_pose :deserialize buf ptr-) (incf ptr- (send _initial_pose :serialization-length))
   ;;
   self)
  )

(defclass slam_toolbox_msgs::DeserializePoseGraphResponse
  :super ros::object
  :slots ())

(defmethod slam_toolbox_msgs::DeserializePoseGraphResponse
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

(defclass slam_toolbox_msgs::DeserializePoseGraph
  :super ros::object
  :slots ())

(setf (get slam_toolbox_msgs::DeserializePoseGraph :md5sum-) "29a9bb432c3daccc49d63131eece4576")
(setf (get slam_toolbox_msgs::DeserializePoseGraph :datatype-) "slam_toolbox_msgs/DeserializePoseGraph")
(setf (get slam_toolbox_msgs::DeserializePoseGraph :request) slam_toolbox_msgs::DeserializePoseGraphRequest)
(setf (get slam_toolbox_msgs::DeserializePoseGraph :response) slam_toolbox_msgs::DeserializePoseGraphResponse)

(defmethod slam_toolbox_msgs::DeserializePoseGraphRequest
  (:response () (instance slam_toolbox_msgs::DeserializePoseGraphResponse :init)))

(setf (get slam_toolbox_msgs::DeserializePoseGraphRequest :md5sum-) "29a9bb432c3daccc49d63131eece4576")
(setf (get slam_toolbox_msgs::DeserializePoseGraphRequest :datatype-) "slam_toolbox_msgs/DeserializePoseGraphRequest")
(setf (get slam_toolbox_msgs::DeserializePoseGraphRequest :definition-)
      "int8 UNSET = 0
int8 START_AT_FIRST_NODE = 1
int8 START_AT_GIVEN_POSE = 2
int8 LOCALIZE_AT_POSE = 3

# inital_pose should be Map -> base_frame (parameter, generally base_link)
#

string filename
int8 match_type
geometry_msgs/Pose2D initial_pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
")

(setf (get slam_toolbox_msgs::DeserializePoseGraphResponse :md5sum-) "29a9bb432c3daccc49d63131eece4576")
(setf (get slam_toolbox_msgs::DeserializePoseGraphResponse :datatype-) "slam_toolbox_msgs/DeserializePoseGraphResponse")
(setf (get slam_toolbox_msgs::DeserializePoseGraphResponse :definition-)
      "int8 UNSET = 0
int8 START_AT_FIRST_NODE = 1
int8 START_AT_GIVEN_POSE = 2
int8 LOCALIZE_AT_POSE = 3

# inital_pose should be Map -> base_frame (parameter, generally base_link)
#

string filename
int8 match_type
geometry_msgs/Pose2D initial_pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
")



(provide :slam_toolbox_msgs/DeserializePoseGraph "29a9bb432c3daccc49d63131eece4576")


