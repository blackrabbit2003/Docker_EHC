FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 ehc

RUN  echo 'ehc:1111' | chpasswd

COPY flag.txt flag.txt

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]