{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/nixos
    ];

  networking.hostName = "x390y"; # Define your hostname.


  environment.systemPackages = with pkgs; [
    nautilus
    jq # for autorotation
    puddletag    
    ntfs3g
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
    ayugram-desktop       # Telegram
    youtube-music         # YT MUSIC
    digikam

    # python develop
    sqlitestudio
    postgresql
  ];

  hardware.sensor.iio.enable = true; 
  programs.iio-hyprland.enable = true;
  
 
  services.libinput.enable = true; # touchscreen
  services.iptsd.config.Touchscreen.DisableOnStylus = true;

  
  hardware.graphics.enable = true;
  system.stateVersion = "25.05";
}
