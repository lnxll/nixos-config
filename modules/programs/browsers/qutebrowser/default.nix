{...}:
{
  home-manager.sharedModules = [(_:
    {
      programs.qutebrowser = {
        enable = true;
      };
    }
  )];
}
