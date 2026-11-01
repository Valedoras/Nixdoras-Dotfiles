{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;

    shellAliases = {
      snrs = "sudo nixos-rebuild switch";
      snrs-st = "sudo nixos-rebuild switch --show-trace";
      sncgd = "sudo nix-collect-garbage -d";
    };
  };

  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      fastfetch
    '';

    shellAliases = {
      snrs = "sudo nixos-rebuild switch --flake /home/nixdoras#nixdoras";
      snrs-st = "sudo nixos-rebuild switch --flake /home/nixdoras#nixdoras --show-trace";
      sncgd = "sudo nix-collect-garbage -d";
      cdnixdoras = "cd .. && cd nixdoras && nvim .";
    };
  };
}
