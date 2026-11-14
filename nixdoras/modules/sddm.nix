{ pkgs, ... }:

let
  custom-sddm-astronaut = pkgs.sddm-astronaut.override {
    embeddedTheme = "black_hole";
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
	CursorSize = 10;
      };
    };
    extraPackages = with pkgs; [
      sddm-astronaut
      kdePackages.qtmultimedia
      google-cursor
    ];
  };

  environment.systemPackages = with pkgs; [
    custom-sddm-astronaut
    kdePackages.qtmultimedia
    google-cursor
  ];
}
