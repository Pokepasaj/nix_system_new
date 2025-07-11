{ config, pkgs, ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  networking.hosts = {
    "172.18.0.2" = [
      "frontend.secret.tpv.k8s"
    ];
    "172.19.0.2" = [
      "secret.tpv.k8s"
    ];
  };
}
