{pkgs, ...}: 
{ 
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;

    profiles.default.extensions = with pkgs.vscode-extensions; [
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
}