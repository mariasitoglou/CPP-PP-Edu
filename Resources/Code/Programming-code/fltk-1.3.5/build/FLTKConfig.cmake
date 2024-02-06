#
# "$Id$"
#
# FLTKConfig.cmake - FLTK CMake configuration file for external projects.
#
# This file is generated by CMake and used to load FLTK's settings for
# an external project.
#
# It defines the following variables:
#
#  FLTK_INCLUDE_DIRS     - FLTK include directories
#  FLTK_LIBRARIES        - list of FLTK libraries built (not yet implemented)
#  FLTK_FLUID_EXECUTABLE - needed by the function FLTK_RUN_FLUID
#                          (or the deprecated fltk_wrap_ui() CMake command)
#
#  FLTK_USE_FILE - sets things up to use FLTK (deprecated since FLTK 1.3.4)
#                - will be removed in FLTK 1.4.0

set(FLTK_VERSION 1.3.5)

include(${CMAKE_CURRENT_LIST_DIR}/FLTK-Targets.cmake)

set(FLTK_INCLUDE_DIRS "/Users/papagian/GPcode/Courseware/HY150/_Stroustrup/src/Programming-code/fltk-1.3.5/build;/Users/papagian/GPcode/Courseware/HY150/_Stroustrup/src/Programming-code/fltk-1.3.5")
set(FLTK_USE_FILE ${CMAKE_CURRENT_LIST_DIR}/UseFLTK.cmake)

if(CMAKE_CROSSCOMPILING)
   find_file(FLUID_PATH
      NAMES fluid fluid.exe
      PATHS ENV PATH
      NO_CMAKE_FIND_ROOT_PATH
   )
   add_executable(fluid IMPORTED)
   set_target_properties(fluid
      PROPERTIES IMPORTED_LOCATION ${FLUID_PATH}
   )
   set(FLTK_FLUID_EXECUTABLE ${FLUID_PATH})
else()
   set(FLTK_FLUID_EXECUTABLE fluid)
endif(CMAKE_CROSSCOMPILING)

#
# End of "$Id$".
#
