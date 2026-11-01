{ inputs, pkgs, ... }:

{
  # programs
  programs.niri.enable = true;
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    # apps
    obs-studio
    brave 

    # code editors
    vim
    neovim

    # terminals
    alacritty

    # essentials
    wl-clipboard
    playerctl
    ffmpeg
    imagemagick
    unzip
    wget
    xz
    gnutar
    pavucontrol
    nautilus

    # environments
    mako
    xdg-desktop-portal
    xwayland-satellite
    quickshell
    waybar
    rofi

    # others
    git
    rustc
    cargo
    google-cursor
  ];
 
  programs.nix-ld.enable = true;
}
