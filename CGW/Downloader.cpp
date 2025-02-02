#include "Downloader.h"
#include <fstream>
#include <iostream>
#include <boost/version.hpp> 

Downloader::Downloader(const std::string& downloadFolder)
    : downloadFolder_(downloadFolder) {}

void Downloader::downloadFile(const std::string& serverIp, const std::string& port, const std::string& filePath) {
    try {
        net::io_context io_context;
        tcp::resolver resolver(io_context);
        tcp::socket socket(io_context);

        auto const results = resolver.resolve(serverIp, port);
        net::connect(socket, results.begin(), results.end());

        http::request<http::string_body> req{http::verb::get, "/upload/" + filePath, 11};
        req.set(http::field::host, serverIp);
        req.set(http::field::user_agent, "Boost.Beast/" BOOST_LIB_VERSION); 

        http::write(socket, req);

        beast::flat_buffer buffer;
        http::response<http::dynamic_body> res;
        http::read(socket, buffer, res);

        if (res.result() != http::status::ok) {
            std::cerr << "다운로드 실패: " << res.result() << "\n";
            return;
        }

        std::string body = beast::buffers_to_string(res.body().data());
        std::string fullFilePath = downloadFolder_ + "/" + filePath;

        std::ofstream outputFile(fullFilePath, std::ios::binary);
        if (!outputFile) {
            std::cerr << "다운로드 파일 생성 실패: " << fullFilePath << "\n";
            return;
        }

        outputFile << body;
        outputFile.close();

        std::cout << "File '" << filePath << "' 다운로드 성공 '" << fullFilePath << "'.\n";

        beast::error_code ec;
        socket.shutdown(tcp::socket::shutdown_both, ec);
    } catch (std::exception const& e) {
        std::cerr << "Error: " << e.what() << "\n";
    }
}