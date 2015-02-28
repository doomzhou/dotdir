export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
xscreensaver -no-splash &
fcitx &
exec fvwm2
xmodmap ~/.fvwm/scripts/dvorak.pke
