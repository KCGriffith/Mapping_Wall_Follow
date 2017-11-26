# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "slide_code: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(slide_code_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/slide_code/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_slide_code_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slide_code" "/home/keaton/Mapping_Wall_Follow/src/slide_code/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(slide_code
  "/home/keaton/Mapping_Wall_Follow/src/slide_code/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slide_code
)

### Generating Module File
_generate_module_cpp(slide_code
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slide_code
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(slide_code_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(slide_code_generate_messages slide_code_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/slide_code/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(slide_code_generate_messages_cpp _slide_code_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slide_code_gencpp)
add_dependencies(slide_code_gencpp slide_code_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slide_code_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(slide_code
  "/home/keaton/Mapping_Wall_Follow/src/slide_code/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slide_code
)

### Generating Module File
_generate_module_lisp(slide_code
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slide_code
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(slide_code_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(slide_code_generate_messages slide_code_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/slide_code/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(slide_code_generate_messages_lisp _slide_code_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slide_code_genlisp)
add_dependencies(slide_code_genlisp slide_code_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slide_code_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(slide_code
  "/home/keaton/Mapping_Wall_Follow/src/slide_code/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slide_code
)

### Generating Module File
_generate_module_py(slide_code
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slide_code
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(slide_code_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(slide_code_generate_messages slide_code_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/keaton/Mapping_Wall_Follow/src/slide_code/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(slide_code_generate_messages_py _slide_code_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slide_code_genpy)
add_dependencies(slide_code_genpy slide_code_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slide_code_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slide_code)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slide_code
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(slide_code_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slide_code)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slide_code
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(slide_code_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slide_code)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slide_code\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slide_code
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(slide_code_generate_messages_py std_msgs_generate_messages_py)
endif()
