{ config, pkgs, ... }:

{
  home.shellAliases = {
    # k8s aliases
    "k" = "kubectl";
    "kcns" = "kubens";
    "ktx" = "kubectx";

    #
    "tf" = "terraform";

    # nix aliases
    "nixsys" = "code /home/kosta/.nixos/";
    "nixhome" = "code /home/kosta/.nixos/home/kosta/";
    "nixpkgs" = "code /home/kosta/.nixos/home/kosta/packages.nix";
    "nixin" = "sudo nixos-rebuild switch --flake /home/kosta";
    "nixref" = "sudo nixos-rebuild switch --recreate-lock-file --upgrade --flake /home/kosta";
    "nixup" = "sudo nixos-rebuild switch --recreate-lock-file --flake /home/kosta";

    # zshmarks
    "g" = "jump";
    "s" = "bookmark";
    "d" = "deletemark";
    "l" = "showmarks";
  };
}
