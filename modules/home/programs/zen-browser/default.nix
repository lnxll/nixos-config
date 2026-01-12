{inputs, ...}:
{
  imports = [ inputs.zen-browser.homeModules.beta ];

  config.stylix.targets.zen-browser.profileNames = [
    "default"
  ];
  config = {
    programs.zen-browser.enable = true;
  };
}