#!/bin/bash


[ "$EUID" -ne 0 ] && echo "Please run as root" && exit 1


echo "pre-required"
apt-get install curl sed bash-completion -y

echo "install file hierarchy"
mkdir /usr/share/sendsms
cp sendsms /usr/bin/ && chmod 755 /usr/bin/sendsms
cp urlencode.sed /usr/share/sendsms/ && chmod 644 /usr/share/sendsms/urlencode.sed
cp ac_sendsms /etc/bash_completion.d/sendsms && chmod 644 /etc/bash_completion.d/sendsms

echo "updatedb (this may take several minutes)"
updatedb

echo "end of the installation"
