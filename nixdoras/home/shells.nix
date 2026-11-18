{ ... }:

{
  programs = {
    bash = {
      enable = true;

      initExtra = ''
        fastfetch
      '';

      shellAliases = {
        snrs = "sudo nixos-rebuild switch --flake /home/nixdoras#nixdoras";
        snrs-st = "sudo nixos-rebuild switch --flake /home/nixdoras#nixdoras --show-trace";
        sncgd = "sudo nix-collect-garbage -d && sl";
        nfu = "cd /home/nixdoras && nix flake update";
        vimnixdoras = "vim /home/nixdoras";
        zednixdoras = "zeditor /home/nixdoras";
        zedconfig = "zeditor /home/valedoras/.config";
      };
    };

    fish = {
      enable = true;

      interactiveShellInit = ''
        fastfetch
      '';

      shellAliases = {
        snrs = "sudo nixos-rebuild switch --flake /home/nixdoras#nixdoras";
        snrs-st = "sudo nixos-rebuild switch --flake /home/nixdoras#nixdoras --show-trace";
        sncgd = "sudo nix-collect-garbage -d && sl";
        nfu = "cd /home/nixdoras && nix flake update";
        vimnixdoras = "vim /home/nixdoras";
        zednixdoras = "zeditor /home/nixdoras";
        zedconfig = "zeditor /home/valedoras/.config";
        ckft = "fc-list : family | sort | uniq";
      };
    };
  };
}
