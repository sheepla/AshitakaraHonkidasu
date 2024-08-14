#include <stdio.h>
#include <time.h>

int main() {
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);

    tm.tm_mday += 1;
    mktime(&tm); 

    printf("%02d/%02dから本気出す\n", tm.tm_mon + 1, tm.tm_mday);
    return 0;
}
