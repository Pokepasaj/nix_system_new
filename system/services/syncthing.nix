{ config, pkgs, ... }:

{
  # enable synthing
  services.syncthing = {
    enable = true;
    dataDir = "/home/kosta";
    openDefaultPorts = true;
    configDir = "/home/kosta/.config/syncthing";
    user = "kosta";
    group = "users";
    overrideDevices = true;
    overrideFolders = true;
  };

  # syncthing devices
  services.syncthing.settings.devices = {
    "um780" = { id = "A7YQZLC-LWZT52Q-OQPGFYL-VIBIDNF-CBBWMS6-EQ7N65B-SEWANOW-S3HSYAA"; };
  };

  # syncthing folders
  services.syncthing.settings.folders = {
    "Documents" = {
      path = "/home/kosta/Documents";
      devices = [ "um780" ];
    };
    "Obsidian" = {
      path = "/home/kosta/Obsidian";
      devices = [ "um780" ];
    };
    "Home" = {
      path = "/home/kosta/";
      devices = [ "um780" ];
    };
  };
}
