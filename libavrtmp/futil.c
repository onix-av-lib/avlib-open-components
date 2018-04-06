#include "futil.h"
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <unistd.h>

const struct sockaddr_un SERVER_PATH = {AF_UNIX, "/dev/socket/fwmarkd"};
union CMD {
        struct cmsghdr cmh;
        char cmsg[CMSG_SPACE(sizeof(int))];
    };

int mChannel;

int setNetworkForSocket(unsigned netId, int socketFd) {

    if (socketFd < 0) {
        return -EBADF;
    }

    struct FCommand command = {SELECT_NETWORK, netId, 0};
    int resp = send_command(&command, socketFd);
    return resp;
}

int send_command(struct FCommand* data, int fd) {
    mChannel = socket(AF_UNIX, SOCK_STREAM, 0);
    if (mChannel == -1) {
        return -errno;
    }
    if (TEMP_FAILURE_RETRY(connect(mChannel, (struct sockaddr*)(&SERVER_PATH), sizeof(SERVER_PATH))) == -1) {
        return 0;
    }
    struct iovec iov;
    iov.iov_base = data;
    iov.iov_len = sizeof(*data);
    struct msghdr msg;
    memset(&msg, 0, sizeof(msg));
    msg.msg_iov = &iov;
    msg.msg_iovlen = 1;
    union CMD cmsgu;
    memset(cmsgu.cmsg, 0, sizeof(cmsgu.cmsg));
    msg.msg_control = cmsgu.cmsg;
    msg.msg_controllen = sizeof(cmsgu.cmsg);
    struct cmsghdr* const cmsgh = CMSG_FIRSTHDR(&msg);
    cmsgh->cmsg_len = CMSG_LEN(sizeof(fd));
    cmsgh->cmsg_level = SOL_SOCKET;
    cmsgh->cmsg_type = SCM_RIGHTS;
    memcpy(CMSG_DATA(cmsgh), &fd, sizeof(fd));

    if (TEMP_FAILURE_RETRY(sendmsg(mChannel, &msg, 0)) == -1) {
        return -errno;
    }
    int error = 0;
    if (TEMP_FAILURE_RETRY(recv(mChannel, &error, sizeof(error), 0)) == -1) {
        return -errno;
    }
    return error;
}