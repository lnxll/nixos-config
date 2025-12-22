{config, pkgs, ...}:
{
  networking = {
    hostName = "x390y";
    networkmanager.enable = true;
  };

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}