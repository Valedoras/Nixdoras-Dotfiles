{ inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.beta
    inputs.noctalia.homeModules.default
  ];

  programs = {
    zen-browser = {
      enable = true;
    };

    noctalia = {
      enable = true;
    };
  };
}
