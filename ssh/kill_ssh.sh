#!/usr/bin/bash

# If you need to stop `sshd`, just kill it's process:
echo "PID of sshd is : $(pidof sshd)"
echo "[+] Stopping the sshd server"
pkill sshd
