{inputs, ...}:
{
  imports = [ inputs.zen-browser.homeModules.beta ];

  config = {
    programs.zen-browser.enable = true;
  };
}