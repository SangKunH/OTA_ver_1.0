#include "Sender.h"
#include <sys/ioctl.h> 
#include <net/if.h>    

Sender::Sender(const std::string& canInterface)
    : canInterface_(canInterface) {}

void Sender::sendFile(const std::string& filePath) {
    int s = socket(PF_CAN, SOCK_RAW, CAN_RAW);
    if (s < 0) {
        std::cerr << "can 소켓 생성 실패" << std::endl;
        return;
    }

    struct ifreq ifr;
    strcpy(ifr.ifr_name, canInterface_.c_str());
    ioctl(s, SIOCGIFINDEX, &ifr);

    struct sockaddr_can addr;
    addr.can_family = AF_CAN;
    addr.can_ifindex = ifr.ifr_ifindex;

    if (bind(s, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        std::cerr << "Bind 실패" << std::endl;
        close(s);
        return;
    }

    std::ifstream file(filePath, std::ios::binary);
    if (!file) {
        std::cerr << "file 오픈 실패" << std::endl;
        close(s);
        return;
    }

    file.seekg(0, std::ios::end);
    std::streamsize fileSize = file.tellg();
    file.seekg(0, std::ios::beg);

    struct can_frame frame;
    const uint8_t command[8] = {0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00};

    // 제어 명령 전송
    std::cout << "control command 전송" << std::endl;
    frame.can_id = 0x7B;
    frame.can_dlc = 8;
    memcpy(frame.data, command, 8);
    if (write(s, &frame, sizeof(frame)) != sizeof(frame)) {
        std::cerr << "control command 전송 실패" << std::endl;
        close(s);
        return;
    }

    std::this_thread::sleep_for(std::chrono::milliseconds(100));

    // 파일 크기 전송
    std::cout << "파일 크기: " << fileSize << " 바이트" << std::endl;
    frame.can_id = 0x71;
    frame.can_dlc = 4;
    frame.data[0] = (fileSize >> 24) & 0xFF;
    frame.data[1] = (fileSize >> 16) & 0xFF;
    frame.data[2] = (fileSize >> 8) & 0xFF;
    frame.data[3] = fileSize & 0xFF;
    if (write(s, &frame, sizeof(frame)) != sizeof(frame)) {
        std::cerr << "파일 크기 전송 실패" << std::endl;
        close(s);
        return;
    }

    std::this_thread::sleep_for(std::chrono::milliseconds(100));

    // 파일 데이터 전송
    std::cout << "데이터 전송" << std::endl;
    const std::streamsize chunkSize = 8;
    char buffer[chunkSize];
    std::streamsize totalSent = 0;
    frame.can_id = 0x70;
    while (file.read(buffer, chunkSize)) {
        frame.can_dlc = file.gcount();
        memcpy(frame.data, buffer, frame.can_dlc);

        if (write(s, &frame, sizeof(frame)) != sizeof(frame)) {
            std::cerr << "데이터 전송 실패" << std::endl;
            close(s);
            return;
        }

        totalSent += frame.can_dlc;

        if (totalSent % 1024 == 0) {
            float progress = (float)totalSent / fileSize * 100;
            std::cout << "\rProgress: " << progress << "%" << std::flush;
        }

        std::this_thread::sleep_for(std::chrono::milliseconds(30));
    }

    std::cout << "\n보낸 바이트 크기: " << totalSent << std::endl;
    file.close();
    close(s);
    std::cout << "펌웨어 전송 끝" << std::endl;
}