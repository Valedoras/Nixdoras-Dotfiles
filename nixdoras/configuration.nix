{ ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/default.nix
    ];

  virtualisation.vmware.guest.enable = true;

  system.stateVersion = "26.05";
}
