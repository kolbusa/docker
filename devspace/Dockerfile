FROM fedora:31

ENV DISPLAY=:1
ENV VNC_PORT=5901

EXPOSE $VNC_PORT
EXPOSE 22

RUN dnf install -y \
                audit \
                autoconf \
                automake \
                dejavu-sans-fonts \
                dejavu-sans-mono-fonts \
                dejavu-serif-fonts \
                desktop-file-utils \
                dnf \
                docbook-style-xsl \
                dosfstools \
                f31-backgrounds-extras-mate \
                file \
                findutils \
                firefox \
                gcc \
                git \
                hostname \
                iproute \
                iputils \
                libX11-devel \
                lz4 \
                man \
                marco \
                mate-applets \
                mate-backgrounds \
                mate-calc \
                mate-dictionary \
                mate-disk-usage-analyzer \
                mate-media \
                mate-menus-preferences-category-menu \
                mate-power-manager \
                mate-screensaver \
                mate-screenshot \
                mate-search-tool \
                mate-session-manager \
                mate-system-log \
                mate-system-monitor \
                mate-terminal \
                mate-themes \
                mate-user-admin \
                mozo \
                neovim \
                openssh-server \
                p7zip \
                p7zip-plugins \
                parole \
                procps-ng \
                rootfiles \
                rpm \
                slick-greeter-mate \
                strace \
                sudo \
                tar \
                tigervnc-server \
                tmux \
                traceroute \
                urw-base35-fonts \
                which \
                xdg-utils \
                xz

RUN getent group 100 || groupadd -g 100 rsdubtso
RUN useradd -u 1026 -g 100 rsdubtso
COPY launch.sh /launch.sh
RUN chown 1026:100 -R /launch.sh
RUN chmod 755 -R /launch.sh
RUN echo "rsdubtso ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/rsdubtso
VOLUME /home/rsdubtso
WORKDIR /home/rsdubtso
USER 1026

CMD ["/launch.sh"]

