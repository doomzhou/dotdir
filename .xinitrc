export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
xset -b
xscreensaver -no-splash &
fcitx &
xmodmap ~/.fvwm/scripts/dvorak.pke
exec fvwm2
