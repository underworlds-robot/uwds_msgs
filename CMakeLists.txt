cmake_minimum_required(VERSION 2.8.3)
project(uwds_msgs)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  std_msgs
  geometry_msgs
  message_generation
)

## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   # Clients topology messages
   Client.msg
   ClientInteraction.msg
   Context.msg
   # Data related messages
   Property.msg
   Node.msg
   Situation.msg
   MeshTriangle.msg
   Mesh.msg
   # Changes messages
   Invalidations.msg
   Changes.msg
   ChangesInContextStamped.msg

 )

## Generate services in the 'srv' folder
 add_service_files(
   FILES
   ListInContext.srv
   Enable.srv
   # Clients topology related services
   GetTopology.srv
   # Data initilization related services
   GetScene.srv
   GetTimeline.srv
   # Mesh related services
   GetMesh.srv
   # Dynamic reconfiguration related services
   List.srv
   ReconfigureInputs.srv
   ReconfigureMultipleInputs.srv
   ReconfigureSingleInput.srv
 )

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
   geometry_msgs
 )

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a exec_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES uwds_msgs
  CATKIN_DEPENDS std_msgs geometry_msgs shape_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)
