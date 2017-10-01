FROM alpine:3.6

RUN apk update && \
    apk add openssh python3 && \
    ssh-keygen -A && \
    echo 'root:toor' | chpasswd && \
    sed -i 's@#PermitRootLogin prohibit-password@PermitRootLogin yes@' /etc/ssh/sshd_config

EXPOSE 22

CMD /usr/sbin/sshd -D
