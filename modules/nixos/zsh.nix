{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      "c" = "clear";
      "ff" = "fastfetch";
    };
  };
}