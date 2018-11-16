cmake_minimum_required(VERSION 2.8.3)
project(uwds_msgs)

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
   Enable.srv
   # Clients topology related services
   GetTopology.srv
   # Data initialization related services
   GetScene.srv
   GetTimeline.srv
   GetMesh.srv
   # Dynamic reconfiguration related services
   List.srv
   ListInContext.srv
   ReconfigureInputs.srv
 )

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
   geometry_msgs
 )

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
  CATKIN_DEPENDS std_msgs geometry_msgs
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
