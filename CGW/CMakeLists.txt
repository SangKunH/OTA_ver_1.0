cmake_minimum_required(VERSION 3.10)

project(FileTransfer)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Boost REQUIRED COMPONENTS system)

set(SOURCES
    main.cpp
    Downloader.cpp
    Sender.cpp
)

add_executable(cgw ${SOURCES})

target_link_libraries(cgw PRIVATE Boost::system rt pthread)