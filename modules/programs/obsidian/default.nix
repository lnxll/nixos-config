{config, lib, pkgs, ...}:
let
  cfg = config.var.obsidian;
in
{
  options.var.obsidian.enable = lib.mkEnableOption "Enable Obsidian";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      obsidian
    ];
  };
}