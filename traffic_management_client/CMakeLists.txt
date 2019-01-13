cmake_minimum_required(VERSION 2.8.3)
project(traffic_management_client)

find_package(catkin REQUIRED COMPONENTS
    rospy
    std_msgs
    message_generation
)

catkin_python_setup()

generate_messages(
    DEPENDENCIES
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
