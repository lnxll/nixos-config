{ pkgs, ... }: {
  home.packages = with pkgs; [
    brightnessctl
    wofi
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      #==================================================
      # MONITORS
      #==================================================
      monitor = "eDP-1, preferred, auto, 1";

      #==================================================
      # EXEC-ONCE
      #==================================================
      exec-once = [
      # load all the plugins you installed
      "udiskie --automount --notify --smart-tray &"
      "hyprctl plugin load $HYPR_PLUGIN_DIR/lib/libhyprexpo.so"
      "waybar &"
      "swaync &"
      "nm-applet &"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
      "pgrep hyprpaper"
      "iio-hyprland"
      "systemctl --user start hyprpolkitagent"
      ];

      #==================================================
      # GENERAL
      #==================================================
      general = {
      gaps_in = 4;
      gaps_out = 8;
      border_size = 0;
      # "col.active_border" = "rgba(ffffffee)";
      # "col.inactive_border" = "rgba(595959aa)";
      resize_on_border = false;
      allow_tearing = false;
      layout = "dwindle";
      };

      #==================================================
      # DECORATION
      #==================================================
      decoration = {
        rounding = 6;
        rounding_power = 2;

        active_opacity = 0.9;
        inactive_opacity = 0.9;

        shadow = {
            enabled = false;
        };

        blur = {
            enabled = true;
        };
      };
      #==================================================
      # INPUTS
      #==================================================
      input = {
      kb_layout = "us, cz, ru, ua";
      kb_variant = ", qwerty, legacy, winkeys";
      kb_options = "grp:win_space_toggle";

      follow_mouse = 1;
      sensitivity = 0; 
      touchpad = {
          natural_scroll = true;
      };
      };

      #==================================================
      # GESTURES
      #==================================================
      # gestures = {
      #   workspace_swipe = true;
      #   workspace_swipe_invert = false;
      #   workspace_swipe_forever	= true;
      # };

      #==================================================
      # OTHER
      #==================================================
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };
    };
  };
}