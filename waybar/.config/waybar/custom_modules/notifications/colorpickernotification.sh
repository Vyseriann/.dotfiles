# Sends notification of color selection to system notification app
# uses hyprpicker for color selector

COLOR=$(hyprpicker -f hex)

if [[ -n "${COLOR}" ]]; then
  echo "${COLOR}" | wl-copy
  notify-send "Color Picker" "Copied ${COLOR} to clipboard" -u low -t 2000
fi
