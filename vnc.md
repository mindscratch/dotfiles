# vnc

## install

```
sudo yum install -y epel-release
sudo yum groupinstall -y Xfce
sudo yum install tigervnc-server
```

Start the server to setup a password, then kill the server and cleanup `/tmp/.X11*` and `/tmp/.X1-lock`.

```
vncserver
```

Then change $HOME/.vnc/xstartup to look like this:

```
#!/bin/sh

xrdb $HOME/.Xresources
startxfce4 &
```

## start the server

$(pwd)/vncserver.sh
