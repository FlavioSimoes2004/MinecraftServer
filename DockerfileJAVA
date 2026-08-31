FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install -y openjdk-25-jdk nano curl gnupg systemd systemd-sysv

# remover arquivos de serviços desnecessários para rodar no Docker
RUN rm -f /lib/systemd/system/multi-user.target.wants/* \
    /etc/systemd/system/*.wants/* \
    /lib/systemd/system/local-fs.target.wants/* \
    /lib/systemd/system/sockets.target.wants/*udev* \
    /lib/systemd/system/sockets.target.wants/*initctl* \
    /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* \
    /lib/systemd/system/systemd-update-utmp*

RUN curl -SsL https://packages.playit.gg/keys/playit.gpg | gpg --dearmor | tee /usr/share/keyrings/playit.gpg >/dev/null
RUN chmod 0644 /usr/share/keyrings/playit.gpg
RUN curl -fsSL -o /etc/apt/sources.list.d/playit.list https://packages.playit.gg/repo-files/playit-debian.list
RUN apt-get update -y
RUN apt-get install -y playit

WORKDIR /app

COPY server.jar ./

RUN echo "eula=true" > eula.txt

# Define o volume para o cgroup (necessário para o systemd)
VOLUME [ "/sys/fs/cgroup" ]

# Define o systemd como o processo principal (PID 1)
CMD ["/lib/systemd/systemd"]