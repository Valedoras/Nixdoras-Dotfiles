{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    # terminal apps
    lavat
    fastfetch
    terminal-rain-lightning
    btop
    bat
    cava
    cbonsai

    # fonts
    nerd-fonts.jetbrains-mono
  ];

  fonts.fontconfig.enable = true;
}
