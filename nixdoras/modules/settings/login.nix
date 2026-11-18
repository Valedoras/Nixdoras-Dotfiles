{ pkgs, inputs, ... }:

{
  services.displayManager.sddm = {
    enable = true;
    theme = "pixie";
    wayland = {
      enable = true;
      compositor = "kwin";
    };

    package = pkgs.kdePackages.sddm;

    settings = {
      Theme = {
        CursorTheme = "GoogleDot-Black";
        CursorSize = 10;
        };
    };

    extraPackages = [
      pkgs.kdePackages.qtsvg
      pkgs.kdePackages.qtdeclarative
      pkgs.kdePackages.qt5compat
    ];
  };

  environment.systemPackages = [
    (inputs.pixie-sddm.packages.${pkgs.stdenv.hostPlatform.system}.pixie-sddm.override {
      background = ../../home/pictures/wallpapers/mo.jpg;
      avatar = ../../home/pictures/profiles/acheron.jpg;
      accentColor = "#3F5F91";
      autoColor = true;
      backgroundColor = "#1A1C1E";
      textColor = "#E2E2E6";
      fontFamily = "GoMono Nerd Font";
    })
  pkgs.nerd-fonts.go-mono
  pkgs.google-cursor
  ];
}
