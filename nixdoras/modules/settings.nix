{ pkgs, ... }:

{
  # user settings
  users.users.valedoras = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
  };

  # -----

  # networking settings
  networking = {
    hostName = "nixdoras";
    networkmanager.enable = true;
  };

  # -----

  # bootloader settings
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
    };

    limine = {
      enable = true;
      maxGenerations = 9;
      style = {
        interface.resolution = "1920x1080@60";
        # wallpapers = [ ../home/pictures/wallpapers/saber.jpg ];
      };
    };
  };

  # -----

  # locales settings
  time.timeZone = "Asia/Manila";

  # -----

  # services settings
  services = {
    pulseaudio.enable = false;

    pipewire = {
      enable = true;
      pulse.enable = true;
    };

    power-profiles-daemon.enable = true;

    upower.enable = true;
  };

  # -----

  # nix settings
  nix = {
    settings.experimental-features = [ "nix-command" "flakes" ];

    gc = {
      automatic = true;
      dates = "daily";
      options = "--max-old-generations 9";
    };
  };

  nixpkgs.config.allowUnfree = true;
}
