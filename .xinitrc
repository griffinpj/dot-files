#!bin/zsh

# configure x11
xsetroot -solid dark
xsetroot -cursor_name left_ptr
xset fp+ /opt/local/share/fonts/
xset fp rehash
xrdb ~/.config/.xresources
xset r rate 250 30
xset b off
xhost +localhost

while true
do
    xsetroot -name "  `` |  `date +'[%h:%m] %y-%m-%d'` | `$home/.local/bin/info/battery` "
    sleep 2
done &

exec /opt/homebrew/bin/dwm
