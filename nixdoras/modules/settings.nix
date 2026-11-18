{ ... }:

{
  imports = [
    ./settings/bootloader.nix
    ./settings/hardware.nix
    ./settings/locales.nix
    ./settings/login.nix
    ./settings/networking.nix
    ./settings/services.nix
    ./settings/user.nix
  ];

  # nix settings #
  nix = {
    settings.experimental-features = [ "nix-command" "flakes" ];

    gc = {
      automatic = true;
      dates = "daily";
      options = "--max-old-generations 9";
    };
  };
}
