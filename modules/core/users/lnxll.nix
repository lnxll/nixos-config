{config, pkgs, ... }:
let
  username = config.var.username;
in
{
  home-manager.users.${username} = {
    programs.home-manager.enable = true;
    xdg.enable = true;
    home = {
      username = username;
      homeDirectory = "/home/${username}";
      stateVersion = "25.05"; # Do not change!
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [ 
      "wheel"
      "networkmanager"
      "storage"
    ];
  };
}