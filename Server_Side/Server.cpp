//
// Created by Ahmednasser on 11/1/2019.
//

#include "Server.h"

#include <sys/socket.h>
#include <netinet/in.h>
#include <thread>
#include <vector>

using namespace std;

Server::Server(int port) {
portNumber = port;
}

void Server::startServer() {
    struct sockaddr_in server_address;
    int addrlen = sizeof(server_address);
    server_address.sin_family = AF_INET;
    server_address.sin_addr.s_addr = INADDR_ANY;
    server_address.sin_port = htons(portNumber);
    int server_fd = socketCreation();
    setsocketopt(server_fd);
    bindSocket(server_fd,server_address);
    listenPort(server_fd);
    acceptRequest(server_fd,server_address,addrlen);

}

int Server::socketCreation() {
    int server_fd;
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0){
        perror("socket failed");
        exit(EXIT_FAILURE);
    }
    return server_fd;
}

void Server::setsocketopt(int server_fd) {
    int opt = 1;
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT,&opt, sizeof(opt))){
        perror("setsockopt");
        exit(EXIT_FAILURE);
    }
}

void Server::bindSocket(int server_fd,sockaddr_in server_address) {
    if (bind(server_fd, (struct sockaddr *) &server_address, sizeof(server_address)) < 0) {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }
}

void Server::listenPort(int server_fd) {
    if (listen(server_fd, 10) < 0) {
        perror("listen");
        exit(EXIT_FAILURE);
    }
}

void Server::acceptRequest(int server_fd,sockaddr_in server_address,int addrlen) {
    while (true) {
        int new_socket = accept(server_fd, (struct sockaddr *) &server_address,(socklen_t *) &addrlen);
        if (new_socket< 0) {
            perror("acception has failed");
            exit(EXIT_FAILURE);
            //break;
        }
        perror(&"Connection has started on socket : " [ new_socket]);
        thread workerThread(&Server::thread_routine,new_socket);
        workerThread.detach();
    }
}

void Server::thread_routine(int new_socket) {

}





