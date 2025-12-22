{config, ...}:
{
  home-manager.sharedModules = [(
    {
      programs.ghostty = {
        enable = true;
        enableBashIntegration = true;
        enableZshIntegration = true;
        settings = {
          background = config.lib.stylix.colors.base00;
        };
      };
    }
  )];
}