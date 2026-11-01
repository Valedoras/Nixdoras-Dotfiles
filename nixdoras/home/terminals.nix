{ pkgs, config, lib, ... }:

{
  programs.ghostty = {
    enable = true;
    package = if pkgs.stdenv.isDarwin then pkgs.ghostty-bin else pkgs.ghostty;

    enableFishIntegration = true;

    settings = {
      command = "fish";
      confirm-close-surface = "false";
      scrollbar = "never";
      background-opacity = "0.85";
      background-blur = "true";
      font-family = "JetBrainsMono Nerd Font";
      font-size = "15";
      font-style = "Medium";
    };
  };

  programs.kitty = {
    enable = true;
  };
}
