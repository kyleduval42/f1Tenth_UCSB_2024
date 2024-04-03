# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "message_filters;nav_msgs;rosconsole;roscpp;sparse_bundle_adjustment;sensor_msgs;tf2;tf;tf2_ros;visualization_msgs;pluginlib;message_runtime;tf2_geometry_msgs;interactive_markers;slam_toolbox_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lceres_solver_plugin;-ltoolbox_lib;-lslam_toolbox_rviz_plugin;/usr/lib/aarch64-linux-gnu/libboost_system.so.1.71.0;/usr/lib/aarch64-linux-gnu/libboost_serialization.so.1.71.0;/usr/lib/aarch64-linux-gnu/libboost_filesystem.so.1.71.0;/usr/lib/aarch64-linux-gnu/libboost_thread.so.1.71.0".split(';') if "-lceres_solver_plugin;-ltoolbox_lib;-lslam_toolbox_rviz_plugin;/usr/lib/aarch64-linux-gnu/libboost_system.so.1.71.0;/usr/lib/aarch64-linux-gnu/libboost_serialization.so.1.71.0;/usr/lib/aarch64-linux-gnu/libboost_filesystem.so.1.71.0;/usr/lib/aarch64-linux-gnu/libboost_thread.so.1.71.0" != "" else []
PROJECT_NAME = "slam_toolbox"
PROJECT_SPACE_DIR = "/home/f1tenth/f1Tenth_UCSB_2024/install"
PROJECT_VERSION = "1.5.7"
