{config, pkgs, lib, ...}:
let
  cfg = config.var.git;
in
{
  home-manager.sharedModules = [(_: 
    {
      programs.git = {
        enable = true;
        package = pkgs.gitFull;

        settings = {
          user = {
            Name = "lnxll";
            Email = "118633911+lnxll@users.noreply.github.com";
          };

          init.defaultBranch = "main";
          color.ui = "auto";
        };
      };
    }
  )];
}