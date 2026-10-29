{ config, pkgs, ... }:

{
  imports = [
    ./home.nix
    ./package.nix
    ./network.nix
    ./audio.nix
    ./user.nix
    ./setting.nix
    ./bootloader.nix
    ./locales.nix
    ./sddm.nix
  ];
}
