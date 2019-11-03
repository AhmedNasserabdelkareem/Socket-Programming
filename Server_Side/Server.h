//
// Created by Ahmednasser on 11/1/2019.
//

#ifndef SOCKET_PROGRAMMING_SERVER_H
#define SOCKET_PROGRAMMING_SERVER_H


#include <netinet/in.h>

class Server {
private:
    int portNumber;


public:
    explicit Server(int port);

    void startServer();
    int socketCreation();
    void setsocketopt(int server_fd);
    void bindSocket(int server_fd,sockaddr_in server_address);
    void listenPort(int server_fd);
    void acceptRequest(int server_fd,sockaddr_in server_address,int addrlen);
    void thread_routine(int new_socket);
    };


#endif //SOCKET_PROGRAMMING_SERVER_H
