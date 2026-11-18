{ ... }:

{
  services = {
    pulseaudio.enable = false;

    pipewire = {
      enable = true;
      pulse.enable = true;
    };

    power-profiles-daemon.enable = true;

    upower.enable = true;

    thermald.enable = true;
  };
}
