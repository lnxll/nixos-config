{pkgs, ...}:
{
  programs.git = {
    enable = true;
    package = pkgs.gitFull;

    settings = {
      user = {
        Name = "lnxll";
        Email = "118633911+lnxll@users.noreply.github.com";
      };

      init.defaultBranch = "main";
      color.ui = "auto";
    };
  };
}