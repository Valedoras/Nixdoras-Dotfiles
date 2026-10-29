{ inputs, pkgs, ... }:

{
  # programs
  programs.fish.enable = true;
  programs.niri.enable = true;
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    # apps
    obs-studio
    pcmanfm
    brave   

    # code editors
    vim
    neovim

    # terminals
    kitty
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

    # environments
    mako
    waybar
    swaybg
    rofi
    xdg-desktop-portal
    xwayland-satellite

    # others
    git
    rustc
    cargo
    google-cursor
  ];
 
  programs.nix-ld.enable = true;
}
