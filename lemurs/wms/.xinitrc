# Zloada se xresources in xbindkeys
[[ -f ~/.Xresources ]]&& xrdb -merge -I$HOME ~/.Xresources &
xbindkeys &

# The black/white grid as background doesn't suit my taste.
xsetroot -solid black &
# Ratpoison is compatible with xcompmgr! Now you can have real transparency
xcompmgr -c -f -D 5 &
# Set keyboard layout
setxkbmap -layout si &

# Zazene picom za transparency
picom --backend glx &

# flatpak permission so it starts without major delay
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
systemctl --user start xdg-desktop-portal-gtk

# awesome is default session
exec awesome
exec ratpoison
