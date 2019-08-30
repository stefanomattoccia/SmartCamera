cmake_minimum_required(VERSION 2.8)

project(ov7670Daemon)
set(CMAKE_BUILD_TYPE Release)

add_library(ddr_to_axis_reader_linux    SHARED src/drivers/src/ddr_to_axis_reader_v1_0/xddr_to_axis_reader_linux.c)
add_library(ddr_to_axis_reader          SHARED src/drivers/src/ddr_to_axis_reader_v1_0/xddr_to_axis_reader.c)

add_library(axis_to_ddr_writer_linux    SHARED src/drivers/src/axis_to_ddr_writer_v1_0/xaxis_to_ddr_writer_linux.c)
add_library(axis_to_ddr_writer          SHARED src/drivers/src/axis_to_ddr_writer_v1_0/xaxis_to_ddr_writer.c)

add_library(gpio_linux    SHARED src/drivers/src/gpio_v4_1/xgpio_linux.c)
add_library(gpio          SHARED src/drivers/src/gpio_v4_1/xgpio_intr.c)

add_executable(
    ov7670Stop 
    src/daemon/src/Stop.cpp 
    src/common/src/axis_to_ddr_writer.cpp
    src/common/src/ddr_to_axis_reader.cpp
)

target_link_libraries(
    ov7670Stop 
    PUBLIC ddr_to_axis_reader_linux
    PUBLIC ddr_to_axis_reader
    PUBLIC axis_to_ddr_writer_linux
    PUBLIC axis_to_ddr_writer
)

add_executable(
    ov7670Start 
    src/daemon/src/Start.cpp 
    src/common/src/axis_to_ddr_writer.cpp
    src/common/src/ddr_to_axis_reader.cpp
    src/common/src/gpio_intr.cpp
)

target_link_libraries(
    ov7670Start 
    PUBLIC ddr_to_axis_reader_linux
    PUBLIC ddr_to_axis_reader
    PUBLIC axis_to_ddr_writer_linux
    PUBLIC axis_to_ddr_writer
    PUBLIC gpio
    PUBLIC gpio_linux
)

add_executable(
    getFrames
    src/frameAccess/src/getFrames.cpp 
    src/common/src/axis_to_ddr_writer.cpp
    src/common/src/ddr_to_axis_reader.cpp
    src/common/src/gpio_intr.cpp
)

target_link_libraries(
    getFrames
    PUBLIC ddr_to_axis_reader_linux
    PUBLIC ddr_to_axis_reader
    PUBLIC axis_to_ddr_writer_linux
    PUBLIC axis_to_ddr_writer
    PUBLIC gpio
    PUBLIC gpio_linux
)
