{
  inputs,
  pkgs, 
  ...
}:
{
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs; };
    users.lnxll = {
      imports = [ 
        ../home 
      ];
      home.username = "lnxll";
      home.homeDirectory = "/home/lnxll";
      home.stateVersion = "25.05";
      programs.home-manager.enable = true;
    };
    backupFileExtension = "hm-backup";
  };

  environment.pathsToLink = [
    "/share/applications"
    "/share/xdg-desktop-portal"
  ];

  users = {
    defaultUserShell = pkgs.zsh;
    users.lnxll = {
      isNormalUser = true;
      description = "lnxll";
      extraGroups = [ 
        "networkmanager"
        "wheel"
        "storage"
      ];
    };
  };
}
