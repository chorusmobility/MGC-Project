cmake_minimum_required(VERSION 2.8.3)
project(traffic_management_service)

find_package(catkin REQUIRED COMPONENTS
  rospy
)

catkin_python_setup()

catkin_package()

catkin_install_python(
    PROGRAMS
        scripts/registrator_node
        scripts/navigator_node
    DESTINATION
        ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
    FILES
        launch/registrator.launch
        launch/navigator.launch
    DESTINATION
        ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
