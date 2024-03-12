
(cl:in-package :asdf)

(defsystem "slam_toolbox_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AddSubmap" :depends-on ("_package_AddSubmap"))
    (:file "_package_AddSubmap" :depends-on ("_package"))
    (:file "Clear" :depends-on ("_package_Clear"))
    (:file "_package_Clear" :depends-on ("_package"))
    (:file "ClearQueue" :depends-on ("_package_ClearQueue"))
    (:file "_package_ClearQueue" :depends-on ("_package"))
    (:file "DeserializePoseGraph" :depends-on ("_package_DeserializePoseGraph"))
    (:file "_package_DeserializePoseGraph" :depends-on ("_package"))
    (:file "LoopClosure" :depends-on ("_package_LoopClosure"))
    (:file "_package_LoopClosure" :depends-on ("_package"))
    (:file "MergeMaps" :depends-on ("_package_MergeMaps"))
    (:file "_package_MergeMaps" :depends-on ("_package"))
    (:file "Pause" :depends-on ("_package_Pause"))
    (:file "_package_Pause" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
    (:file "SerializePoseGraph" :depends-on ("_package_SerializePoseGraph"))
    (:file "_package_SerializePoseGraph" :depends-on ("_package"))
    (:file "ToggleInteractive" :depends-on ("_package_ToggleInteractive"))
    (:file "_package_ToggleInteractive" :depends-on ("_package"))
  ))