{ config, pkgs, userpkgs, ... }:

{
  imports = [
    ./programs/zsh.nix
  ];

  # git
  programs.git = {
    enable = true;
    userName = "kosta";
    userEmail = "kosta@topvine.co";
    extraConfig.init.defaultBranch = "main";
  };
}
