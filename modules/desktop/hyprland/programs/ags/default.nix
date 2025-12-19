{inputs, config, lib, pkgs, ...}:
let
  cfg = config.var.desktop.hyprland.ags;
in
{
  options.var.desktop.hyprland.ags = {
    enable = lib.mkEnableOption "Enable ags for hyprland";  
  };

  config = lib.mkIf cfg.enable {
    home-manager.sharedModules = [(
      {...}:
      {
        imports = [ inputs.ags.homeManagerModules.default ];
        
        programs.ags = {
          enable = true;
          configDir = ./.;
          extraPackages = with pkgs; [
            # ...
          ];
        };
      }
    )];
  };
}