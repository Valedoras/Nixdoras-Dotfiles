{ inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.beta
    inputs.noctalia.homeModules.default
    inputs.areofyl-fetch.homeManagerModules.default
  ];

  programs = {
    home-manager = {
      enable = true;
    };

    zen-browser = {
      enable = true;
    };

    noctalia = {
      enable = true;
    };

    fetch = {
      enable = true;
    };
  };
}
