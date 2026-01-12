{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = [
    (pkgs.writeShellScriptBin "lnxll_lock" ''
      grimshot save screen ~/.cache/screenlock.png &&
      hyprctl switchxkblayout all 0 &&
      hyprlock
    '')
  ];
  
  stylix.targets.hyprlock.enable = false;
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        grace = 2;
        hide_cursor = true;
        no_fade_in = false;
      };
      background = [
        {
          path = "~/.cache/screenlock.png";
          
          blur_passes = 1; # 0 disables blurring
          blur_size = 7;
          noise = 0.0117;
          contrast = 0.8916;
          brightness = 0.8172;
          vibrancy = 0.1696;
          vibrancy_darkness = 0.0;
        }
      ];
    };
  };
}
