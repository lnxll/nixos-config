{
  pkgs,
  config,
  lib,
  ...
}:
let
  cfg = config.var.desktop.gnome;
in
{
  options.var.desktop.gnome.enable = lib.mkEnableOption "Enable Gnome";

  config = lib.mkIf cfg.enable {
    services = {
      displayManager.gdm = {
        enable = true;
        wayland = true;
      };
      desktopManager.gnome.enable = true;

      gnome = {
        games.enable = false;
      };
    };
    environment.gnome.excludePackages = with pkgs.gnome; [
      pkgs.baobab
      pkgs.cheese
      pkgs.eog
      pkgs.epiphany
      pkgs.gedit
      pkgs.simple-scan
      pkgs.totem
      pkgs.yelp
      pkgs.evince
      pkgs.file-roller
      pkgs.geary
      pkgs.seahorse
      pkgs.gnome-console
      pkgs.gnome-calculator 
      pkgs.gnome-calendar
      pkgs.gnome-characters
      pkgs.gnome-clocks
      pkgs.gnome-contacts
      pkgs.gnome-font-viewer
      pkgs.gnome-logs
      pkgs.gnome-maps
      pkgs.gnome-music
      pkgs.gnome-photos
      pkgs.gnome-screenshot
      pkgs.gnome-system-monitor
      pkgs.gnome-weather
      pkgs.gnome-disk-utility
      pkgs.gnome-connections
    ];
  };
}