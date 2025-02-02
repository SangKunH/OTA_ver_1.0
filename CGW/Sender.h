#ifndef SENDER_H
#define SENDER_H

#include <string>
#include <sys/socket.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <net/if.h>
#include <unistd.h>
#include <iostream>
#include <fstream>
#include <cstring>
#include <chrono>
#include <thread>

class Sender {
public:
    Sender(const std::string& canInterface);
    void sendFile(const std::string& filePath);

private:
    std::string canInterface_;
};

#endif 