#!/bin/bash

echo " store server and login details "
HOST="172.31.10.127"
USER="anonymous"
PASSWORD=""


echo " Changing Directory "
cd /tmp


echo " FTP login and upload is explained in paragraph below"

ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd /var/ftp/pub
mput *
bye
EOF

