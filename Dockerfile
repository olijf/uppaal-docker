FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

# else it will output an error about Gtk namespace not found
RUN apt install -y gir1.2-gtk-3.0

#jre
RUN apt install -y openjdk-19-jre

#unzip & sudo
RUN apt install -y sudo unzip
RUN useradd --create-home --shell /bin/bash -G sudo uppaal
RUN echo 'uppaal:uppaal' | chpasswd

ADD uppaal64-4.1.26-2.zip /opt/
RUN unzip /opt/uppaal64-4.1.26-2.zip -d /opt
RUN chown -R uppaal:uppaal /opt/uppaal64-4.1.26-2

USER uppaal

WORKDIR /home/uppaal
COPY entrypoint.sh entrypoint.sh
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
CMD ["/bin/bash"]
