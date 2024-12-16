{ config, pkgs, ... }:

{
  users.users.kosta = {
    isNormalUser = true;
    description = "kosta";
    shell = pkgs.zsh;

    extraGroups = [
      "docker"
      "networkmanager"
      "wheel"
    ];
  };
}
