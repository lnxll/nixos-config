{pkgs, ...}:
{
  time.timeZone = "Europe/Prague";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "cs_CZ.UTF-8";
    LC_IDENTIFICATION = "cs_CZ.UTF-8";
    LC_MEASUREMENT = "cs_CZ.UTF-8";
    LC_MONETARY = "cs_CZ.UTF-8";
    LC_NAME = "cs_CZ.UTF-8";
    LC_NUMERIC = "cs_CZ.UTF-8";
    LC_PAPER = "cs_CZ.UTF-8";
    LC_TELEPHONE = "cs_CZ.UTF-8";
    LC_TIME = "cs_CZ.UTF-8";
  };

  networking.networkmanager.enable = true;
  

  services = {
    power-profiles-daemon.enable = true;
    libinput = {
      enable = true;
    };
    # for mount
    devmon.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    udiskie
    ntfs3g
    wget
    git
    btop
    htop
    rar
    unrar
    unzip
    bat
    vim
    lm_sensors
  ];

  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
  };
}