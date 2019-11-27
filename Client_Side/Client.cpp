//
// Created by ahmednasser on 11/21/19.
//

#include <netinet/in.h>
#include <cstring>
#include <arpa/inet.h>
#include <vector>
#include <fstream>
#include <iostream>
#include "Client.h"

using namespace std;
typedef struct request{
    int type;
    string file_name;
    string ip_number;
    int port_number = DEFAULT_PORT_NUMBER;
};
vector<string> split(string line,string delimiter);
vector<request>  readCommands(const char *commands);
void post(string fileName,int sock);
void get(string fileName,int sock);
char buffer[MAX_SIZE_BUFFER] = {0};

int startConnection(int PORT, const char *host,request r);
Client::Client(int i, char* basicString) {
portNUmber = i;
host = basicString;
}

void Client::start(char* commands) {
    vector<request> comms ;
    try{
        comms = readCommands(commands);
        cout<<comms.size()<<endl;
    }catch (string e){
        perror("Exception while reading input");
        exit(EXIT_FAILURE);
    }
        for (int i = 0; i <comms.size() ;i++) {
            request command = comms[i];
            int sock = startConnection(portNUmber,host,command);
            if(command.type==0){ //HANDLING GET REQUEST
                get(command.file_name,sock);
            }else{  //HANDLING POST REQUEST
                post(command.file_name,sock);
            }
        }
}
int startConnection(int PORT, const char *host,request r){
    int sock = 0;
    struct sockaddr_in serv_addr =*(new sockaddr_in());
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0){
        perror("\n Socket creation error \n");
        return 0;
    }

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);

    // Convert IPv4 and IPv6 addresses from text to binary form
    if(inet_pton(AF_INET, host, &serv_addr.sin_addr)<=0){
        perror("\nInvalid address/ Address not supported \n");
        return 0;
    }

    if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0){
        perror("\nConnection Failed \n");
        return 0;
    }
    string type ="";
    if(r.type==0){
        type="GET";
    }else{
        type="POST";
    }
    string m = type + " " +r.file_name+ " HTTP/1.1\r\n\r\n";
    char const *msg = m.c_str();
    send(sock, msg, m.length() , 0);
    return sock;
}

vector<request> readCommands(const char *commands){
    vector<request> reqs;
    ifstream input(commands);
    for(string line;getline( input, line );){
        if(line.length() != 0){
            vector<string> result = split(line," ");
            if(result.size()>=3){
                request tmp;
                if(result[0]=="client_get"){
                    tmp.type=0;
                }else if (result[0]=="client_post"){
                    tmp.type=1;
                }
                tmp.file_name= result[1];
                if(result[2]=="localhost"){
                    tmp.ip_number="127.0.0.1";
                }else {
                    tmp.ip_number = result[2];
                }
                if(result.size()==4){
                    tmp.port_number=stoi(result[3]);
                }
                reqs.push_back(tmp);
            }
        }
    }
    return reqs;
}

vector<string> split(string line,string delimiter){
    size_t pos = 0;
    string token;
    vector<string> temp;
    while ((pos = line.find(" ")) != string::npos) {
        token = line.substr(0, pos);
        temp.push_back(token);
        line.erase(0, pos + delimiter.length());
    }
    temp.push_back(line);
    return temp;
}

void get(string fileName,int sock){
    string msg = "GET " + fileName + " " + "HTTP/1.1" + "\r\n\r\n";
    string response,chunk,data;
    send( sock, msg.c_str() , msg.length() , 0 );
    memset(buffer,0, MAX_SIZE_BUFFER);
    int bytes_received = recv(sock, buffer, sizeof(buffer), 0);
    if(bytes_received<=0){
        perror("Error while receive data");
    }
    response.append(buffer,bytes_received);
    cout <<"server response: " << response <<endl;
    if (response.find("404 NotFound") != std::string::npos){
        return;
    }
    bytes_received = recv(sock, buffer, sizeof(buffer), 0);
    chunk.append(buffer, bytes_received);
    data.append(chunk);
    ofstream fout;
    fout.open(fileName);
    for(char c : data){
        fout << c;
    }
    cout << "file is received !" << endl;
}


void post(string fileName,int sock){
    string msg = "POST " + fileName + " " + "HTTP/1.1" + "\r\n\r\n";
    string data,response;
    send(sock, msg.c_str(), msg.length(), 0);
    memset(buffer,0, MAX_SIZE_BUFFER);
    int bytes_received = recv(sock, buffer, sizeof(buffer), 0);
    if(bytes_received<=0){
        perror("Error while sending data");
    }
    response.append(buffer,bytes_received);
    cout <<"server response: " << response <<endl;
    ifstream fin;
    fin.open(fileName);
    if(fin && (response.find("200 OK") != std::string::npos)){
        char c;
        while(fin.get(c)){
            data.push_back(c);
        }
        fin.close();
        send(sock, data.c_str(), data.length(), 0);
        send(sock, "\r\n", strlen("\r\n") , 0);
    }else{
       perror("file is not found !");
        return;
    }
}

