{pkgs, ...}: 
{
  environment.etc."nextcloud-admin-pass".text = "Qweasdzxc123!@#";
  services.nextcloud = {
    enable = false;
    package = pkgs.nextcloud32;
    hostName = "localhost";
    database.createLocally = true;
    config = {
      dbtype = "sqlite";
      dbuser = "nextcloud";
      dbname = "nextcloud";
      adminpassFile = "/etc/nextcloud-admin-pass";
      adminuser = "root";
    };
  };
}