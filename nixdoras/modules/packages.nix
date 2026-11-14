{ pkgs, ... }:

{
  # programs
  programs = {
    niri = {
      enable = true;
    };

    firefox = {
      enable = true;
    };

    nix-ld = {
      enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    # apps
    obs-studio
    nautilus
    brave-origin

    # code editors
    vim
    neovim
    zed-editor

    # terminals
    alacritty
    kitty
    foot

    # essentials
    wl-clipboard
    playerctl
    ffmpeg
    imagemagick
    unzip
    wget
    xz
    vlc
    gnutar
    pavucontrol
    mpv
    nil
    chafa
    nixd
    qview

    # environments
    mako
    xdg-desktop-portal
    xwayland-satellite
    quickshell

    # others
    git
    rustc
    cargo
    gcc
  ];
}
