# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "irobotcreate2: 15 messages, 0 services")

set(MSG_I_FLAGS "-Iirobotcreate2:/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(irobotcreate2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Bumper.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Bumper.msg" "irobotcreate2/RoombaSwitch:std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/PlaySong.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/PlaySong.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/ScheduleLeds.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/ScheduleLeds.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/IRCharacter.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/IRCharacter.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/WheelDrop.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/WheelDrop.msg" "irobotcreate2/RoombaSwitch:std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Battery.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Battery.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Leds.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Leds.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/DigitLeds.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/DigitLeds.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Diagnostic.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Diagnostic.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Buttons.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Buttons.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaIR.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaIR.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Brushes.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Brushes.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Song.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Song.msg" "irobotcreate2/Note:std_msgs/Header"
)

get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg" NAME_WE)
add_custom_target(_irobotcreate2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "irobotcreate2" "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/PlaySong.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/IRCharacter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/ScheduleLeds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/WheelDrop.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Leds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/DigitLeds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaIR.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Buttons.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Diagnostic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Brushes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Song.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_cpp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
)

### Generating Services

### Generating Module File
_generate_module_cpp(irobotcreate2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(irobotcreate2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(irobotcreate2_generate_messages irobotcreate2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Bumper.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/PlaySong.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/ScheduleLeds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/IRCharacter.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/WheelDrop.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Battery.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Leds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/DigitLeds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Diagnostic.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Buttons.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaIR.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Brushes.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Song.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_cpp _irobotcreate2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(irobotcreate2_gencpp)
add_dependencies(irobotcreate2_gencpp irobotcreate2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS irobotcreate2_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/PlaySong.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/IRCharacter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/ScheduleLeds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/WheelDrop.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Leds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/DigitLeds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaIR.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Buttons.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Diagnostic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Brushes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Song.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)
_generate_msg_lisp(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
)

### Generating Services

### Generating Module File
_generate_module_lisp(irobotcreate2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(irobotcreate2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(irobotcreate2_generate_messages irobotcreate2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Bumper.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/PlaySong.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/ScheduleLeds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/IRCharacter.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/WheelDrop.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Battery.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Leds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/DigitLeds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Diagnostic.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Buttons.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaIR.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Brushes.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Song.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_lisp _irobotcreate2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(irobotcreate2_genlisp)
add_dependencies(irobotcreate2_genlisp irobotcreate2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS irobotcreate2_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/PlaySong.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/IRCharacter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/ScheduleLeds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/WheelDrop.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Leds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/DigitLeds.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaIR.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Buttons.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Diagnostic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Brushes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Song.msg"
  "${MSG_I_FLAGS}"
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)
_generate_msg_py(irobotcreate2
  "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
)

### Generating Services

### Generating Module File
_generate_module_py(irobotcreate2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(irobotcreate2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(irobotcreate2_generate_messages irobotcreate2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Bumper.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/PlaySong.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaSwitch.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/ScheduleLeds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/IRCharacter.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/WheelDrop.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Battery.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Leds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/DigitLeds.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Diagnostic.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Buttons.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/RoombaIR.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Brushes.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Song.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lucas/Dropbox/ROS_Class_New/workspace/src/driver/msg/Note.msg" NAME_WE)
add_dependencies(irobotcreate2_generate_messages_py _irobotcreate2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(irobotcreate2_genpy)
add_dependencies(irobotcreate2_genpy irobotcreate2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS irobotcreate2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/irobotcreate2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(irobotcreate2_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/irobotcreate2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(irobotcreate2_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/irobotcreate2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(irobotcreate2_generate_messages_py std_msgs_generate_messages_py)
