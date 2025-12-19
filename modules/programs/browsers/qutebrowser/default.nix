{config, lib, ...}:
let
  cfg = config.var.browsers.qutebrowser;
in
{ 
  options.var.browsers.qutebrowser.enable = lib.mkEnableOption "Enable qutebrowser";

  config = lib.mkIf cfg.enable {
    home-manager.sharedModules = [(_:
      {
        programs.qutebrowser = {
          enable = true;
        };
      }
    )];
  };
}
