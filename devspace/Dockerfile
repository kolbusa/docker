FROM fedora:latest

ENV DISPLAY=:1
ENV VNC_PORT=5901

ARG UID=1000
ARG GID=1000

EXPOSE $VNC_PORT
EXPOSE 22

RUN dnf install -y \
                audit \
                desktop-file-utils \
                dnf \
                dosfstools \
                dejavu-sans-fonts \
                dejavu-serif-fonts \
                dejavu-sans-mono-fonts \
                f29-backgrounds-extras-mate \
                fedora-release-matecompiz \
                file \
                findutils \
                firefox \
                gcc \
                git \
                iproute \
                lz4 \
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
                sudo \
                tar \
                tigervnc-server \
                tmux \
                urw-base35-fonts \
                which \
                xdg-utils \
                xz

RUN getent group ${GID} || groupadd -g ${GID} rsdubtso
RUN useradd -u ${UID} -g ${GID} rsdubtso
COPY launch.sh /launch.sh
RUN chown ${UID}:${GID} -R /launch.sh
RUN chmod 755 -R /launch.sh
RUN echo "rsdubtso ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/rsdubtso
VOLUME /home/rsdubtso
WORKDIR /home/rsdubtso
USER ${UID}

CMD ["/launch.sh"]

