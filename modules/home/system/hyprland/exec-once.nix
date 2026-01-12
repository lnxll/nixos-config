{
  wayland.windowManager.hyprland.settings.exec-once = [
    "udiskie --automount --notify --smart-tray &"
    "swww-daemon &"
    "waybar &"
    "swaync &"
    "nm-applet &"
    "wl-paste --type text --watch cliphist store"
    "wl-paste --type image --watch cliphist store"
    "iio-hyprland"
  ];
}
