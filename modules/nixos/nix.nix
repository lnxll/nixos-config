{
  nixpkgs.config = {
    allowUnfree = true;
  };

  nix = {   
    channel.enable = false;
    extraOptions = ''
      warn-dirty = false
    '';
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
    };

    gc = {
      automatic = true;
      persistent = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
}