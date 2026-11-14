{ ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/default.nix
    ];

  virtualisation.vmware.guest.enable = true;

  hardware.graphics.enable = true;
  hardware.bluetooth.enable = true;

  system.stateVersion = "26.05";
}
