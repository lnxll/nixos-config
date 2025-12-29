{inputs, ...}:
{
  imports = [ inputs.zen-browser.homeModules.beta ];

  config = {
    stylix.targets.firefox.profileNames = [ "default" ];
    programs.zen-browser.enable = true;
  };
}