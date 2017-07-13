#xrdb ~/.Xresources
xset r rate 250 60
/usr/bin/VBoxClient-all &
exec i3 -V >> /tmp/i3log-$(date +'%F-%k-%M-%S') 2>&1
