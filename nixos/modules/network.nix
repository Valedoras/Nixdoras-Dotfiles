{ config, pkgs, ... }:

{
  networking.hostName = "nixdoras";
  networking.networkmanager.enable = true;
}
