export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
xscreensaver -no-splash &
xmodmap ~/.fvwm/scripts/dvorak.pke
fcitx &
exec fvwm2
