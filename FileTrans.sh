#!/bin/sh

Server=$1
User=root
Pass=root
Path=$2
File=$3

cd $Path

ftp -n <<COMMAND
open $Server
user $User $Pass
cd /tmp
bin
passive
put $File
chmod 755 $File
COMMAND
