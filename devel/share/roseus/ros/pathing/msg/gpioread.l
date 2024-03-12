;; Auto-generated. Do not edit!


(when (boundp 'pathing::gpioread)
  (if (not (find-package "PATHING"))
    (make-package "PATHING"))
  (shadow 'gpioread (find-package "PATHING")))
(unless (find-package "PATHING::GPIOREAD")
  (make-package "PATHING::GPIOREAD"))

(in-package "ROS")
;;//! \htmlinclude gpioread.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pathing::gpioread
  :super ros::object
  :slots (_header _state _pin ))

(defmethod pathing::gpioread
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) nil)
    ((:pin __pin) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   (setq _pin (string __pin))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _state
    1
    ;; string _pin
    4 (length _pin)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;; string _pin
       (write-long (length _pin) s) (princ _pin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _pin
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pin (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pathing::gpioread :md5sum-) "a6977a6ae8bef9739a477a4e7511d644")
(setf (get pathing::gpioread :datatype-) "pathing/gpioread")
(setf (get pathing::gpioread :definition-)
      "Header header

# the state of the pin. true means high, false means low.
bool state

# the pin that has changed. Represented as a string because
# some pins are named things like '12', while others are named
# things like 'P8' depending on your hardware.
string pin

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :pathing/gpioread "a6977a6ae8bef9739a477a4e7511d644")


