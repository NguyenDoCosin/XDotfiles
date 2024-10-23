#!/bin/sh

# Start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

gnome-keyring-daemon --start &
nm-applet &
dwmblocks &
~/.fehbg
kill -35 $(pidof dwmblocks)
xrdb ~/.cache/wal/colors.Xresources
exec dwm
