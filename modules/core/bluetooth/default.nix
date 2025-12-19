{config, lib, pkgs, ...}: 
let
  cfg = config.var.bluetooth;
in
{
  options.var.bluetooth = {
    enable = lib.mkEnableOption "Enable Bluetooth";
    autostart = lib.mkEnableOption "Bluetooth autostart";
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [blueman];
    hardware.bluetooth = {
      enable = true;
      powerOnBoot = cfg.autostart;
    };
  };
}