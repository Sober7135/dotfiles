nitrogen --restore &
picom &
fcitx5 &
flameshot &
xrandr --output DisplayPort-0 --above eDP
export _JAVA_AWT_WM_NONREPARENTING=1
while xsetroot -name "Vol:`awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)`  $(cat /sys/class/power_supply/BAT0/capacity)% `date +"%R:%S"`"
    do
    	sleep 0.1
    done &
exec dwm
