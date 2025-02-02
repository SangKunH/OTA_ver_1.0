#include "Downloader.h"
#include "Sender.h"
#include <iostream>
#include <string>

int main() {
    std::string serverIp = "127.0.0.1"; 
    std::string port = "5000";          
    std::string canInterface = "can0";  
    std::string downloadFolder = "download";

    std::string fileName;
    std::cout << "다운로드 받을 파일 이름 입력력: ";
    std::cin >> fileName;

    // Http
    Downloader downloader(downloadFolder);
    downloader.downloadFile(serverIp, port, fileName);

    std::string fullFilePath = downloadFolder + "/" + fileName;

    // can
    Sender sender(canInterface);
    sender.sendFile(fullFilePath);

    return 0;
}