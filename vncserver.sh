#!/bin/bash

sudo rm -rf /tmp/.X11-unix/
vncserver -geometry 1920x1080 -interface 127.0.0.1 -nolisten tcp -localhost :1
