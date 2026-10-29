{ pkgs, ... }:

{
  users.users.valedoras = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
  };
}
