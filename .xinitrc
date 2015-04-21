export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
xscreensaver -no-splash &
fcitx &
exec fvwm2
xmodmap ~/.fvwm/scripts/dvorak.pke
