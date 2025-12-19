{config, pkgs, lib, ...}:
let
  cfg = config.var.git;
in
{
  options.var.git = {
    enable = lib.mkEnableOption "Enable git";
    name = lib.mkOption { type = lib.types.str; };
    email = lib.mkOption { type = lib.types.str; };
  };
  config = lib.mkIf cfg.enable {
    home-manager.sharedModules = [(_: 
      {
        programs.git = {
          enable = true;
          package = pkgs.gitFull;

          settings = {
            user = {
              Name = cfg.name;
              Email = cfg.email;
            };

            init.defaultBranch = "main";
            color.ui = "auto";
          };
        };
      }
    )];
  };
}