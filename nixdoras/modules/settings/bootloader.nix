{ ... }:

{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };

      limine = {
        enable = true;
        maxGenerations = 9;
        style = {
          interface.resolution = "1920x1080@60";
          wallpapers = [ ../../home/pictures/wallpapers/black.jpg ];
        };
      };
    };

    kernelParams = [ "video=1920x1080" ];
  };
}
