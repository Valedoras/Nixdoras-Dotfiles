{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # terminal apps #
    lavat
    fastfetch
    terminal-rain-lightning
    btop
    bat
    cava
    cbonsai
    peaclock
    cmatrix
    sl
    colorpanes
    asciiquarium
    yt-dlp
    mommy

    # fonts #
    nerd-fonts.jetbrains-mono
    nerd-fonts.go-mono

    # cursors #
    google-cursor
  ];

  fonts.fontconfig.enable = true;
}
