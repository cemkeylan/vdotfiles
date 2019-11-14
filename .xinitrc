#!/bin/sh

. $HOME/.profile
. $HOME/.config/xkeymap
/usr/libexec/polkit-gnome-authentication-agent-1 &
setxkbmap $KEYMAP
xcompmgr -C &
nightmodetoggle disable &
powercheck &
slstatus &
[ -e $HOME/.lastresource ] && xrdb "$(cat $HOME/.lastresource)" || xrdb $HOME/.local/share/xresource-themes/dark/dracula
zc &
unclutter &
numlockx on &
mpd >/dev/null 2>&1 &
xautolock -time 10 -locker '~/.local/bin/lockme' &
[ -e $HOME/.custom.sh ] && $HOME/.custom.sh &
killall gpg-agent 2>/dev/null
nlr &
sxhkd &
exec ck-launch-session dbus-launch --sh-syntax --exit-with-x11 dwm
