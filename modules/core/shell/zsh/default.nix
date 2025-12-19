{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      "c" = "clear";
      "cat" = "bat";
      "f" = "fastfetch";
      "h" = "pgrep Hyprland || hyprland";
    };
  };
  users.defaultUserShell = pkgs.zsh;
}
