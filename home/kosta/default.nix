{ config, pkgs, ... }:

{
  imports = [
    ./aliases.nix
    ./packages.nix
    ./services.nix
    ./programs.nix
  ];

  home = {
    username = "kosta";
    homeDirectory = "/home/kosta";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
  };

  programs.home-manager.enable = true;
}
