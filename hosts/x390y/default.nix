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
    jq                    # for autorotation
    puddletag             # Music tags
    sway-contrib.grimshot # screenshots
    sxiv
    obsidian              # Notes
                 
    foot                  # terminal     
    nautilus              # file manager
    yazi                  # file manager (main)
    feh                   # view photo
    vlc                   # view video
    mpv                   # view video
    tenki                 # fullscreen time
    cava
    digikam               # for photographics
    ayugram-desktop       # Telegram
    youtube-music         # YT MUSIC
    vesktop               # Discord
    mpris-timer           # timer for study
    r2modman              # for Valheim mods
    typst                 # Word alternative
    
    # picard

    ### python develop ###
    sqlitestudio
    postgresql
    
    ### android ###
    heimdall
    android-tools
    # jmtpfs
  ];
  # rotate display
  hardware.sensor.iio.enable = true; 
  programs.iio-hyprland.enable = true;
  services.iptsd.config.Touchscreen.DisableOnStylus = true;

  
  hardware.graphics.enable = true;
  system.stateVersion = "25.05";
}