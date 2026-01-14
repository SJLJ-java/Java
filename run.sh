#!/bin/bash
pkill -f "Xvfb :99" 2>/dev/null
pkill -f "x11vnc" 2>/dev/null
pkill -f "websockify.*6080" 2>/dev/null
Xvfb :99 -screen 0 1242x698x24 -ac +extension GLX +render -noreset > /dev/null 2>&1 &
DISPLAY=:99 fluxbox > /dev/null 2>&1 &
x11vnc -display :99 -forever -shared -nopw -quiet -listen localhost -rfbport 5900 > /dev/null 2>&1 &
websockify --web /usr/share/novnc 6080 localhost:5900 > /dev/null 2>&1 &
DISPLAY=:99 /workspaces/Java/Godot_v4.5.1-stable_linux.x86_64
