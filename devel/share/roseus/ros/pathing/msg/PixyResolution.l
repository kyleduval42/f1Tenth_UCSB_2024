;; Auto-generated. Do not edit!


(when (boundp 'pathing::PixyResolution)
  (if (not (find-package "PATHING"))
    (make-package "PATHING"))
  (shadow 'PixyResolution (find-package "PATHING")))
(unless (find-package "PATHING::PIXYRESOLUTION")
  (make-package "PATHING::PIXYRESOLUTION"))

(in-package "ROS")
;;//! \htmlinclude PixyResolution.msg.html


(defclass pathing::PixyResolution
  :super ros::object
  :slots (_width _height ))

(defmethod pathing::PixyResolution
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; uint16 _width
    2
    ;; uint16 _height
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _width
       (write-word _width s)
     ;; uint16 _height
       (write-word _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _width
     (setq _width (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _height
     (setq _height (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get pathing::PixyResolution :md5sum-) "20cde1cc3b01e7f015e45dc31f8ca17d")
(setf (get pathing::PixyResolution :datatype-) "pathing/PixyResolution")
(setf (get pathing::PixyResolution :definition-)
      "uint16 width
uint16 height

")



(provide :pathing/PixyResolution "20cde1cc3b01e7f015e45dc31f8ca17d")


