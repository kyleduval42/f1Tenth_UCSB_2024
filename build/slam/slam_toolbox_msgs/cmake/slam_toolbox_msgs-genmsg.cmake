# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "slam_toolbox_msgs: 0 messages, 10 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(slam_toolbox_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv" ""
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv" ""
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv" ""
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv" ""
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv" ""
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv" ""
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv" ""
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv" NAME_WE)
add_custom_target(_slam_toolbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_toolbox_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_cpp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
)

### Generating Module File
_generate_module_cpp(slam_toolbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(slam_toolbox_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(slam_toolbox_msgs_generate_messages slam_toolbox_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_cpp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_toolbox_msgs_gencpp)
add_dependencies(slam_toolbox_msgs_gencpp slam_toolbox_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_toolbox_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_eus(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
)

### Generating Module File
_generate_module_eus(slam_toolbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(slam_toolbox_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(slam_toolbox_msgs_generate_messages slam_toolbox_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_eus _slam_toolbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_toolbox_msgs_geneus)
add_dependencies(slam_toolbox_msgs_geneus slam_toolbox_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_toolbox_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_lisp(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
)

### Generating Module File
_generate_module_lisp(slam_toolbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(slam_toolbox_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(slam_toolbox_msgs_generate_messages slam_toolbox_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_lisp _slam_toolbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_toolbox_msgs_genlisp)
add_dependencies(slam_toolbox_msgs_genlisp slam_toolbox_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_toolbox_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_nodejs(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
)

### Generating Module File
_generate_module_nodejs(slam_toolbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(slam_toolbox_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(slam_toolbox_msgs_generate_messages slam_toolbox_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_nodejs _slam_toolbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_toolbox_msgs_gennodejs)
add_dependencies(slam_toolbox_msgs_gennodejs slam_toolbox_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_toolbox_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)
_generate_srv_py(slam_toolbox_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
)

### Generating Module File
_generate_module_py(slam_toolbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(slam_toolbox_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(slam_toolbox_msgs_generate_messages slam_toolbox_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Pause.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ClearQueue.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/ToggleInteractive.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/Clear.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/LoopClosure.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/MergeMaps.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/AddSubmap.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/DeserializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/slam/slam_toolbox_msgs/srv/SerializePoseGraph.srv" NAME_WE)
add_dependencies(slam_toolbox_msgs_generate_messages_py _slam_toolbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_toolbox_msgs_genpy)
add_dependencies(slam_toolbox_msgs_genpy slam_toolbox_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_toolbox_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_toolbox_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(slam_toolbox_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(slam_toolbox_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(slam_toolbox_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_toolbox_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(slam_toolbox_msgs_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(slam_toolbox_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(slam_toolbox_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_toolbox_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(slam_toolbox_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(slam_toolbox_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(slam_toolbox_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_toolbox_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(slam_toolbox_msgs_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(slam_toolbox_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(slam_toolbox_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_toolbox_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(slam_toolbox_msgs_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(slam_toolbox_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(slam_toolbox_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
