{inputs, lib, ...}:
{
  options.var.username = lib.mkOption { type = lib.types.str; };

  config = {
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      backupFileExtension = "hm-backup";
    };
  };
}