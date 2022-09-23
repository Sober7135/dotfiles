nitrogen --restore &
picom &
fcitx5 &
flameshot &
xrandr --output DisplayPort-0 --primary --above eDP
export _JAVA_AWT_WM_NONREPARENTING=1
export WINIT_X11_SCALE_FACTOR=1.66
xsetroot -cursor_name left_ptr &
dwmblocks &
#while xsetroot -name "Vol:`awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)`  $(cat /sys/class/power_supply/BAT0/capacity)% `date +"%R:%S"`"
#    do
#    	sleep 0.1
#    done &
#exec /home/sober/tmp/dwm/dwm
exec dwm
