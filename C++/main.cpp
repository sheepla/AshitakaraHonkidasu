#include <iostream>
#include <iomanip>
#include <ctime>

int main() {
    std::time_t t = std::time(nullptr);
    std::tm tm = *std::localtime(&t);

    tm.tm_mday += 1;
    std::mktime(&tm);

    std::cout << std::setfill('0') << std::setw(2) << tm.tm_mon + 1 << "/"
              << std::setfill('0') << std::setw(2) << tm.tm_mday
              << "から本気出す" << std::endl;

    return 0;
}
