# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pathing: 6 messages, 0 services")

set(MSG_I_FLAGS "-Ipathing:/home/f1tenth/sandbox/src/pathing/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pathing_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg" NAME_WE)
add_custom_target(_pathing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pathing" "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg" NAME_WE)
add_custom_target(_pathing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pathing" "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg" ""
)

get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg" NAME_WE)
add_custom_target(_pathing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pathing" "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg" NAME_WE)
add_custom_target(_pathing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pathing" "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg" ""
)

get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg" NAME_WE)
add_custom_target(_pathing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pathing" "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg" "std_msgs/Header:sensor_msgs/RegionOfInterest:pathing/PixyBlock"
)

get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg" NAME_WE)
add_custom_target(_pathing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pathing" "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing
)
_generate_msg_cpp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing
)
_generate_msg_cpp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing
)
_generate_msg_cpp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing
)
_generate_msg_cpp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing
)
_generate_msg_cpp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing
)

### Generating Services

### Generating Module File
_generate_module_cpp(pathing
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pathing_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pathing_generate_messages pathing_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg" NAME_WE)
add_dependencies(pathing_generate_messages_cpp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg" NAME_WE)
add_dependencies(pathing_generate_messages_cpp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg" NAME_WE)
add_dependencies(pathing_generate_messages_cpp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg" NAME_WE)
add_dependencies(pathing_generate_messages_cpp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg" NAME_WE)
add_dependencies(pathing_generate_messages_cpp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg" NAME_WE)
add_dependencies(pathing_generate_messages_cpp _pathing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pathing_gencpp)
add_dependencies(pathing_gencpp pathing_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pathing_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing
)
_generate_msg_eus(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing
)
_generate_msg_eus(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing
)
_generate_msg_eus(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing
)
_generate_msg_eus(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing
)
_generate_msg_eus(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing
)

### Generating Services

### Generating Module File
_generate_module_eus(pathing
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pathing_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pathing_generate_messages pathing_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg" NAME_WE)
add_dependencies(pathing_generate_messages_eus _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg" NAME_WE)
add_dependencies(pathing_generate_messages_eus _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg" NAME_WE)
add_dependencies(pathing_generate_messages_eus _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg" NAME_WE)
add_dependencies(pathing_generate_messages_eus _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg" NAME_WE)
add_dependencies(pathing_generate_messages_eus _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg" NAME_WE)
add_dependencies(pathing_generate_messages_eus _pathing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pathing_geneus)
add_dependencies(pathing_geneus pathing_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pathing_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing
)
_generate_msg_lisp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing
)
_generate_msg_lisp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing
)
_generate_msg_lisp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing
)
_generate_msg_lisp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing
)
_generate_msg_lisp(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing
)

### Generating Services

### Generating Module File
_generate_module_lisp(pathing
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pathing_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pathing_generate_messages pathing_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg" NAME_WE)
add_dependencies(pathing_generate_messages_lisp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg" NAME_WE)
add_dependencies(pathing_generate_messages_lisp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg" NAME_WE)
add_dependencies(pathing_generate_messages_lisp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg" NAME_WE)
add_dependencies(pathing_generate_messages_lisp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg" NAME_WE)
add_dependencies(pathing_generate_messages_lisp _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg" NAME_WE)
add_dependencies(pathing_generate_messages_lisp _pathing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pathing_genlisp)
add_dependencies(pathing_genlisp pathing_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pathing_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing
)
_generate_msg_nodejs(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing
)
_generate_msg_nodejs(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing
)
_generate_msg_nodejs(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing
)
_generate_msg_nodejs(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing
)
_generate_msg_nodejs(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pathing
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pathing_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pathing_generate_messages pathing_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg" NAME_WE)
add_dependencies(pathing_generate_messages_nodejs _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg" NAME_WE)
add_dependencies(pathing_generate_messages_nodejs _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg" NAME_WE)
add_dependencies(pathing_generate_messages_nodejs _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg" NAME_WE)
add_dependencies(pathing_generate_messages_nodejs _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg" NAME_WE)
add_dependencies(pathing_generate_messages_nodejs _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg" NAME_WE)
add_dependencies(pathing_generate_messages_nodejs _pathing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pathing_gennodejs)
add_dependencies(pathing_gennodejs pathing_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pathing_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing
)
_generate_msg_py(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing
)
_generate_msg_py(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing
)
_generate_msg_py(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing
)
_generate_msg_py(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing
)
_generate_msg_py(pathing
  "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing
)

### Generating Services

### Generating Module File
_generate_module_py(pathing
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pathing_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pathing_generate_messages pathing_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpioread.msg" NAME_WE)
add_dependencies(pathing_generate_messages_py _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/gpiowrite.msg" NAME_WE)
add_dependencies(pathing_generate_messages_py _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyBlock.msg" NAME_WE)
add_dependencies(pathing_generate_messages_py _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyResolution.msg" NAME_WE)
add_dependencies(pathing_generate_messages_py _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/PixyData.msg" NAME_WE)
add_dependencies(pathing_generate_messages_py _pathing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/sandbox/src/pathing/msg/waypoints.msg" NAME_WE)
add_dependencies(pathing_generate_messages_py _pathing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pathing_genpy)
add_dependencies(pathing_genpy pathing_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pathing_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pathing
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pathing_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(pathing_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(pathing_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pathing_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pathing
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pathing_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(pathing_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(pathing_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pathing_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pathing
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pathing_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(pathing_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(pathing_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pathing_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pathing
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pathing_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(pathing_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(pathing_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pathing_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pathing
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pathing_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(pathing_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(pathing_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pathing_generate_messages_py geometry_msgs_generate_messages_py)
endif()
