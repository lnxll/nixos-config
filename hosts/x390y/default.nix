{inputs, config, pkgs, ... }:
{
  imports =
    [
      ../../modules
      ./hardware-configuration.nix
    ];
  
  environment.systemPackages = with pkgs; [
    obsidian
    ayugram-desktop       # Telegram
    ani-cli               # Anime
    youtube-music         # YT MUSIC
    lm_sensors
    bat
    mpv
    unzip
    unrar
    p7zip
    btop
    peaclock
    tenki
    cava
    cmatrix
    cbonsai
    android-studio
    android-studio-tools
    flutter
  ];
  programs.adb.enable = true;

  boot.kernelParams = [
    "intel_pstate=active"
    "i915.enable_fbc=1"
    "i915.fastboot=1"
    "mem_sleep_default=deep"
    "nvme.noacpi=1"
  ];

  # OpenGL
  hardware.graphics = {
    extraPackages = with pkgs; [
      intel-media-driver
      intel-vaapi-driver
      libva-vdpau-driver
      libvdpau-va-gl
    ];
  };
  
  # Thermal and Noise Management
  services.thermald.enable = true;
  services.throttled.enable = true;
  
  system.stateVersion = "25.05";
}