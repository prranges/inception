#!/bin/bash

useradd -m -s /bin/bash $FTP_USER
echo "$FTP_USER:$FTP_PASS" | chpasswd && mkdir -p /var/www/ftp
echo "$FTP_USER" | tee -a /etc/vsftpd.userlist

/usr/sbin/vsftpd

exec "$@"