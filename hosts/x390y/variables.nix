{config, lib, ...}:
{
  options.var.hostname = lib.mkOption { type = lib.types.str; };

  config.var = {
    hostname = "x390y";
    username = "lnxll";

    stylix = {
      wallpaper = "1.png";
    };

    fastfetch.enable = true;

    git = {
      enable = true;
      name = "lnxll";
      email = "118633911+lnxll@users.noreply.github.com";
    };

    bluetooth = {
      enable = true;
      autostart = true;
    };

    desktop = {
      hyprland = {
        enable = true;
        hyprlock.enable = true;
        waybar.enable = true;
        ags.enable = false;
      };
    };
    
    browsers = {
      firefox.enable = true;
      qutebrowser.enable = false;
    };

    editors = {
      vscode.enable = true;
    };

    obsidian.enable = true;
  };
}