cmake_minimum_required(VERSION 2.8.3)
project(duckie_nav)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  rospy
  std_msgs
)

catkin_python_setup()

add_service_files(
  FILES
    SetGoal.srv
)

generate_messages(
  DEPENDENCIES
    std_msgs
    geometry_msgs
)

catkin_package()

catkin_install_python(
  PROGRAMS
    scripts/g2g_nav
    scripts/group_move_path
  DESTINATION
    ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
  DIRECTORY
    launch
  DESTINATION
    ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
