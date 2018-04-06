#ifndef _F_CLIENT_H
#define _F_CLIENT_H

#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/types.h>


struct FCommand {
    enum {
        ON_ACCEPT,
        ON_CONNECT,
        SELECT_NETWORK,
        PROTECT_FROM_VPN,
        SELECT_FOR_USER,
        QUERY_USER_ACCESS,
        ON_CONNECT_COMPLETE,
    } cmdId;
    unsigned netId;
    uid_t uid;
};

int setNetworkForSocket(unsigned netId, int socketFd);
int send_command(struct FCommand* data, int fd);

#endif