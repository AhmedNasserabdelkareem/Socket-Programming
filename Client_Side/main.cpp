#include <iostream>
#include "Client.h"

using namespace std;
int main(int argc, char** argv){
    if(argc >1){
        int PORT = atoi(argv[1]);
        char* host = argv[2];
        cout<<PORT <<host;
        Client *c = new Client(PORT,host);
        c->start("commands_input_file.txt");
    }else {
        printf("Invalid number of arguments\n");
        return 0;
    }
//    Client *c = new Client(8000,"127.0.0.1");
//    c->start("commands_input_file.txt");
}