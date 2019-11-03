//
// Created by ahmednasser on 11/2/19.
//

#include <cstdlib>
#include <cstdio>
#include "Server.h"

int main(int argc, char const *argv[])
{
    if (argc == 2){
        int PORT = atoi(argv[1]);
        Server *s = new Server(PORT);
        s->startServer();
    }else{
        perror("Error in Port number");
        exit(EXIT_FAILURE);
    }
}
