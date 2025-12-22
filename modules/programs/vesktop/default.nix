{...}:
{
  home-manager.sharedModules = [(_:
    {
      programs.vesktop = {
        enable = true;
      };
    }
  )];
}