# Install script for directory: /home/f1tenth/f1Tenth_UCSB_2024/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/f1tenth/f1Tenth_UCSB_2024/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/f1tenth/f1Tenth_UCSB_2024/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/f1tenth/f1Tenth_UCSB_2024/install" TYPE PROGRAM FILES "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/f1tenth/f1Tenth_UCSB_2024/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/f1tenth/f1Tenth_UCSB_2024/install" TYPE PROGRAM FILES "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/f1tenth/f1Tenth_UCSB_2024/install/setup.bash;/home/f1tenth/f1Tenth_UCSB_2024/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/f1tenth/f1Tenth_UCSB_2024/install" TYPE FILE FILES
    "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/setup.bash"
    "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/f1tenth/f1Tenth_UCSB_2024/install/setup.sh;/home/f1tenth/f1Tenth_UCSB_2024/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/f1tenth/f1Tenth_UCSB_2024/install" TYPE FILE FILES
    "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/setup.sh"
    "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/f1tenth/f1Tenth_UCSB_2024/install/setup.zsh;/home/f1tenth/f1Tenth_UCSB_2024/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/f1tenth/f1Tenth_UCSB_2024/install" TYPE FILE FILES
    "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/setup.zsh"
    "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/f1tenth/f1Tenth_UCSB_2024/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/f1tenth/f1Tenth_UCSB_2024/install" TYPE FILE FILES "/home/f1tenth/f1Tenth_UCSB_2024/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/gtest/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/joystick_drivers/joystick_drivers/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/mercury/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/racecar/racecar/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/serial/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/ackermann_msgs/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/slam/slam_toolbox_msgs/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/vesc/vesc/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/vesc/vesc_msgs/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/sparse_bundle_adjustment-melodic-devel/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/racecar/ackermann_cmd_mux/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/joystick_drivers/joy/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/lidar/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/f1tenth_simulator/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/slam/slam_toolbox/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/twist_to_ackermann/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/slam/slam_toolbox_rviz/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/vesc/vesc_ackermann/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/vesc/vesc_driver/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/navigation/cmake_install.cmake")
  include("/home/f1tenth/f1Tenth_UCSB_2024/build/waypoint_logger/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/f1tenth/f1Tenth_UCSB_2024/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
