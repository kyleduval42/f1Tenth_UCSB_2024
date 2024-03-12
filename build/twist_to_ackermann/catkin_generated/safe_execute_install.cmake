execute_process(COMMAND "/home/f1tenth/sandbox/build/twist_to_ackermann/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/f1tenth/sandbox/build/twist_to_ackermann/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
