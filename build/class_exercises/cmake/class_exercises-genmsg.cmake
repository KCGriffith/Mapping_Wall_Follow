# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "class_exercises: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iclass_exercises:/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(class_exercises_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg/behavior.msg" NAME_WE)
add_custom_target(_class_exercises_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "class_exercises" "/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg/behavior.msg" ""
)

get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/class_exercises/srv/DistanceTo.srv" NAME_WE)
add_custom_target(_class_exercises_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "class_exercises" "/home/keaton/Mapping_Wall_Follow/src/class_exercises/srv/DistanceTo.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(class_exercises
  "/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg/behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_exercises
)

### Generating Services
_generate_srv_cpp(class_exercises
  "/home/keaton/Mapping_Wall_Follow/src/class_exercises/srv/DistanceTo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_exercises
)

### Generating Module File
_generate_module_cpp(class_exercises
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_exercises
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(class_exercises_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(class_exercises_generate_messages class_exercises_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg/behavior.msg" NAME_WE)
add_dependencies(class_exercises_generate_messages_cpp _class_exercises_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/class_exercises/srv/DistanceTo.srv" NAME_WE)
add_dependencies(class_exercises_generate_messages_cpp _class_exercises_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(class_exercises_gencpp)
add_dependencies(class_exercises_gencpp class_exercises_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS class_exercises_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(class_exercises
  "/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg/behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_exercises
)

### Generating Services
_generate_srv_lisp(class_exercises
  "/home/keaton/Mapping_Wall_Follow/src/class_exercises/srv/DistanceTo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_exercises
)

### Generating Module File
_generate_module_lisp(class_exercises
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_exercises
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(class_exercises_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(class_exercises_generate_messages class_exercises_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg/behavior.msg" NAME_WE)
add_dependencies(class_exercises_generate_messages_lisp _class_exercises_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/class_exercises/srv/DistanceTo.srv" NAME_WE)
add_dependencies(class_exercises_generate_messages_lisp _class_exercises_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(class_exercises_genlisp)
add_dependencies(class_exercises_genlisp class_exercises_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS class_exercises_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(class_exercises
  "/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg/behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_exercises
)

### Generating Services
_generate_srv_py(class_exercises
  "/home/keaton/Mapping_Wall_Follow/src/class_exercises/srv/DistanceTo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_exercises
)

### Generating Module File
_generate_module_py(class_exercises
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_exercises
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(class_exercises_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(class_exercises_generate_messages class_exercises_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/class_exercises/msg/behavior.msg" NAME_WE)
add_dependencies(class_exercises_generate_messages_py _class_exercises_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/class_exercises/srv/DistanceTo.srv" NAME_WE)
add_dependencies(class_exercises_generate_messages_py _class_exercises_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(class_exercises_genpy)
add_dependencies(class_exercises_genpy class_exercises_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS class_exercises_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_exercises)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_exercises
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(class_exercises_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_exercises)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_exercises
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(class_exercises_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_exercises)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_exercises\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_exercises
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(class_exercises_generate_messages_py std_msgs_generate_messages_py)
endif()
