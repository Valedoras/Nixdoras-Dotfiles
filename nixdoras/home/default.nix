{ ... }:

{
  imports = [
    ./packages.nix
    ./shells.nix
    ./programs.nix
  ];

  home = {
    username = "valedoras";
    homeDirectory = "/home/valedoras";
    stateVersion = "26.05";
  };

  xdg = {
    configFile = {
      # niri #
      "niri/animations.kdl".source = ./config/niri/animations.kdl;
      "niri/config.kdl".source = ./config/niri/config.kdl;
      "niri/keybinds.kdl".source = ./config/niri/keybinds.kdl;
      "niri/settings.kdl".source = ./config/niri/settings.kdl;
      "niri/startups.kdl".source = ./config/niri/startups.kdl;
      "niri/windows.kdl".source = ./config/niri/windows.kdl;

      # alacritty #
      "alacritty/alacritty.toml".source = ./config/alacritty/alacritty.toml;
    };
  };
}
