{config, lib, ...}:
let
  cfg = config.var.vesktop;
in
{
  options.var.vesktop.enable = lib.mkEnableOption "Enable vesktop";

  config = lib.mkIf cfg.enable {
    home-manager.sharedModules = [(_:
      {
        programs.vesktop = {
          enable = true;
        };
      }
    )];
  };
}