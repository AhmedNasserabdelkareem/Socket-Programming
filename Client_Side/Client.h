//
// Created by ahmednasser on 11/21/19.
//

#ifndef UNTITLED3_CLIENT_H
#define UNTITLED3_CLIENT_H


#include <bits/basic_string.h>
#include <string>

using namespace std;

class Client {

#define DEFAULT_PORT_NUMBER 8080;
#define MAX_SIZE_BUFFER 10000

private:
    int portNUmber;
    const char *host;

public:
    void start(char* commands);
    Client(int i,char* basicString);
};


#endif //UNTITLED3_CLIENT_H
