{ config, pkgs, ... }:

let
  custom-sddm-astronaut = pkgs.sddm-astronaut.override {
    embeddedTheme = "japanese_aesthetic";
  };
in

{
  services.displayManager.sddm = {
    enable = true;
    wayland = {
      enable = true;
      compositor = "kwin";
    };
    autoNumlock = true;
    enableHidpi = true;
    theme = "sddm-astronaut-theme";
    settings = {
      Theme = {
        Current = "sddm-astronaut-theme";
	CursorTheme = "GoogleDot-Black";
	CursorSize = 24;
      };
    };
    extraPackages = with pkgs; [
      custom-sddm-astronaut
    ];
  };

  environment.systemPackages = with pkgs; [
    custom-sddm-astronaut
    kdePackages.qtmultimedia
  ];
}
