# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ackermann_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iackermann_msgs:/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ackermann_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg" NAME_WE)
add_custom_target(_ackermann_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ackermann_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg" ""
)

get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg" NAME_WE)
add_custom_target(_ackermann_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ackermann_msgs" "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg" "ackermann_msgs/AckermannDrive:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ackermann_msgs
)
_generate_msg_cpp(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ackermann_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(ackermann_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ackermann_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ackermann_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ackermann_msgs_generate_messages ackermann_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_cpp _ackermann_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_cpp _ackermann_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ackermann_msgs_gencpp)
add_dependencies(ackermann_msgs_gencpp ackermann_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ackermann_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ackermann_msgs
)
_generate_msg_eus(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ackermann_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(ackermann_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ackermann_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ackermann_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ackermann_msgs_generate_messages ackermann_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_eus _ackermann_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_eus _ackermann_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ackermann_msgs_geneus)
add_dependencies(ackermann_msgs_geneus ackermann_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ackermann_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ackermann_msgs
)
_generate_msg_lisp(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ackermann_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(ackermann_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ackermann_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ackermann_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ackermann_msgs_generate_messages ackermann_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_lisp _ackermann_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_lisp _ackermann_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ackermann_msgs_genlisp)
add_dependencies(ackermann_msgs_genlisp ackermann_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ackermann_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ackermann_msgs
)
_generate_msg_nodejs(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ackermann_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ackermann_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ackermann_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ackermann_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ackermann_msgs_generate_messages ackermann_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_nodejs _ackermann_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_nodejs _ackermann_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ackermann_msgs_gennodejs)
add_dependencies(ackermann_msgs_gennodejs ackermann_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ackermann_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ackermann_msgs
)
_generate_msg_py(ackermann_msgs
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ackermann_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(ackermann_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ackermann_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ackermann_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ackermann_msgs_generate_messages ackermann_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_py _ackermann_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/f1tenth/f1Tenth_UCSB_2024/src/ackermann_msgs/msg/AckermannDriveStamped.msg" NAME_WE)
add_dependencies(ackermann_msgs_generate_messages_py _ackermann_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ackermann_msgs_genpy)
add_dependencies(ackermann_msgs_genpy ackermann_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ackermann_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ackermann_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ackermann_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ackermann_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ackermann_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ackermann_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ackermann_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ackermann_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ackermann_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ackermann_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ackermann_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ackermann_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ackermann_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ackermann_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ackermann_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ackermann_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ackermann_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
