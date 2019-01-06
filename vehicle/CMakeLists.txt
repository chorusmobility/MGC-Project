cmake_minimum_required(VERSION 2.8.3)
project(vehicle)

find_package(catkin REQUIRED COMPONENTS
    rospy
    std_msgs
    geometry_msgs
    message_generation
)

add_service_files(
    FILES
        SetGoal.srv
)

catkin_python_setup()

generate_messages(
    DEPENDENCIES
        geometry_msgs
        std_msgs
)

catkin_package()

catkin_install_python(
    PROGRAMS
        scripts/trader_node
        scripts/worker_node
    DESTINATION
        ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
    DIRECTORY
        launch
    DESTINATION
        ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
