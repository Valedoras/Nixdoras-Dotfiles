{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "modesetting" "nvidia" ];

  hardware = {
    graphics = {
      extraPackages = with pkgs; [
        intel-media-driver
      ];

      enable = true;
    };

    bluetooth = {
      enable = true;
      powerOnBoot = false;
    };

    cpu = {
      intel = {
        updateMicrocode = config.hardware.enableRedistributableFirmware;
      };
    };

    nvidia = {
      modesetting.enable = true;
      open = true;
      nvidiaSettings = true;
      powerManagement.enable = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;

      prime = {
        offload.enable = true;
        offload.enableOffloadCmd = true;
        intelBusId  = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
  };
}
