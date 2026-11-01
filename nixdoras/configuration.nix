{ config, lib, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/default.nix
    ];

  virtualisation.vmware.guest.enable = true;

  hardware.graphics.enable = true;
  hardware.bluetooth.enable = true;  
 
  services = {
  power-profiles-daemon.enable = true;
  upower.enable = true;
  };
 
  system.stateVersion = "26.05";
}

