{ pkgs, ... }:

{
  nixpkgs = {
    config = {
      allowUnfree = true;

      permittedInsecurePackages = [
        # add
      ];
    };
  };

  # programs #
  programs = {
    niri = {
      enable = true;
    };

    nix-ld = {
      enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    # apps #
    obs-studio
    nautilus
    brave-origin

    # code editors #
    vim
    neovim
    zed-editor

    # terminals #
    alacritty
    kitty
    foot

    # essentials #
    wl-clipboard
    xwayland-satellite
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

    # environments #
    mako
    xdg-desktop-portal
    mpvpaper
    quickshell

    # others #
    git
    rustc
    cargo
    gcc
  ];
}
