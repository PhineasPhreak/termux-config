#!/usr/bin/bash

# To start OpenSSH server, you need to execute this command:
sshd &
echo "[+] The 'sshd' server has been launched successfully."
echo "PID of sshd is : $(pidof sshd)"
