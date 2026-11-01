{ config, pkgs, lib, ... }:

{
  imports = [
    ./areofyl.nix
    ./packages.nix
    ./shell.nix
    ./noctalia.nix
    ./cursor.nix
    ./terminals.nix
  ];

  home = {
    username = "valedoras";
    homeDirectory = "/home/valedoras";
    stateVersion = "26.05";
  };

  xdg.configFile."niri".source = ./config/niri;

  programs.home-manager.enable = true;
}
