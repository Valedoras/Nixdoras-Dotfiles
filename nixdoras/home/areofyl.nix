{ inputs, ... }:

{
  imports = [ inputs.areofyl-fetch.homeManagerModules.default ];

  programs.fetch = {
    enable = true;
    labelColor = "white";
    info = [
      "os"
      "shell"
      "kernel"
      "uptime"
      "packages"
      "wm"
      "terminal"
      "cpu"
      "disk"
      "memory"
      "swap"
      "battery"
      "colors"
    ];
    separator = "~~";
    speed = 3.0;
    spin = "y";
    shading = ''█████'';
  };
}
