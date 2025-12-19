{config, lib, ...}:
let
  cfg = config.var.desktop.hyprland.hyprlock;
in
{
  options.var.desktop.hyprland.hyprlock = { 
    enable = lib.mkEnableOption "Enable hyprlock for hyprland";
  };

  config = lib.mkIf cfg.enable {
    home-manager.sharedModules = [(_: {
      programs.hyprlock = {
        enable = true;
        settings = {
          general = {
            hide_cursor = true;
          };
        };
      };
    })];
  };
}