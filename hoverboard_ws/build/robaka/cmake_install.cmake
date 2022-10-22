# Install script for directory: /home/mikel/hoverboard_ws/src/robaka

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mikel/hoverboard_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robaka/srv" TYPE FILE FILES
    "/home/mikel/hoverboard_ws/src/robaka/srv/set_pose.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/reset_odometry.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/reset_tracking.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/start_svo_recording.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/stop_svo_recording.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/start_remote_stream.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/stop_remote_stream.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/set_led_status.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/toggle_led.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/start_3d_mapping.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/stop_3d_mapping.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/save_3d_map.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/start_object_detection.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/stop_object_detection.srv"
    "/home/mikel/hoverboard_ws/src/robaka/srv/save_area_memory.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mikel/hoverboard_ws/build/robaka/catkin_generated/installspace/robaka.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robaka/cmake" TYPE FILE FILES
    "/home/mikel/hoverboard_ws/build/robaka/catkin_generated/installspace/robakaConfig.cmake"
    "/home/mikel/hoverboard_ws/build/robaka/catkin_generated/installspace/robakaConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robaka" TYPE FILE FILES "/home/mikel/hoverboard_ws/src/robaka/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robaka/odom_listener" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robaka/odom_listener")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robaka/odom_listener"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robaka" TYPE EXECUTABLE FILES "/home/mikel/hoverboard_ws/devel/lib/robaka/odom_listener")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robaka/odom_listener" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robaka/odom_listener")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robaka/odom_listener"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robaka/odom_listener")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robaka" TYPE PROGRAM FILES "/home/mikel/hoverboard_ws/build/robaka/catkin_generated/installspace/display.py")
endif()

