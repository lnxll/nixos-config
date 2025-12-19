{config, lib, pkgs, ...}: 
let
  cfg = config.var.editors.vscode;
in
{ 
  options.var.editors.vscode.enable = lib.mkEnableOption "Enable vscode";

  config = lib.mkIf cfg.enable {
    programs.vscode = {
      enable = true;
      package = pkgs.vscodium;

      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        vscode-icons-team.vscode-icons
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "vscode-typescript-next";
          publisher = "ms-vscode";
          version = "5.3.20230808";
          sha256 = "sha256-tN3qRG9Yvpxf4gfcK4qvPGDBIsWm65A/FEYaQu1usS0=";
        }
      ];
    };
  };
}
