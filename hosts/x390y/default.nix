{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/nixos
    ];

  networking.hostName = "x390y"; # Define your hostname.
  programs.steam.enable = true;
  environment.systemPackages = with pkgs; [
    lm_sensors
    nautilus
    jq                    # for autorotation
    puddletag
    vlc
    sway-contrib.grimshot
    sxiv
    obsidian
    ghostty
    yazi
    feh
    mpv
    tenki
    cava
    digikam
    ayugram-desktop       # Telegram
    youtube-music         # YT MUSIC
    vesktop               # Discord
    mpris-timer
    foot
    heimdall
    heimdall-gui
    android-tools
    jmtpfs
    picard
    
    # python develop
    sqlitestudio
    postgresql
  ];
  # rotate display
  hardware.sensor.iio.enable = true; 
  programs.iio-hyprland.enable = true;
  services.iptsd.config.Touchscreen.DisableOnStylus = true;

  
  hardware.graphics.enable = true;
  system.stateVersion = "25.05";
}