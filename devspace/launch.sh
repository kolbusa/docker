#!/bin/sh

if [ '!' -d /home/rsdubtso/.vnc ]; then
        mkdir -p /home/rsdubtso/.vnc
        # echo "securitytypes=none" > /home/rsdubtso/.vnc/config
        echo "exec /usr/bin/mate-session" > /home/rsdubtso/.vnc/xstartup
        chmod +x /home/rsdubtso/.vnc/xstartup
fi

touch /home/rsdubtso/.Xauthority
vncserver -kill :1
vncserver $DISPLAY -SecurityTypes none

sudo /usr/libexec/openssh/sshd-keygen rsa
sudo /usr/libexec/openssh/sshd-keygen ecdsa
sudo /usr/libexec/openssh/sshd-keygen ed25519
sudo /usr/sbin/sshd -D
