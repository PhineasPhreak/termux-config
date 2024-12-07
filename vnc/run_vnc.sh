#!/usr/bin/bash

# Start vnc server ip:5901
echo "[+] Launching the vnc server"
vncserver

echo "[+] Export DISPLAY environment variable"
export DISPLAY=":1"

echo "[+] PID of vnc : $(pidof vncserver) on DISPLAY : $DISPLAY"
