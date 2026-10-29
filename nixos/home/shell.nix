{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;

    shellAliases = {
      snrs = "sudo nixos-rebuild switch";
    };
  };
}
