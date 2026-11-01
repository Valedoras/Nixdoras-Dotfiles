{ pkgs, ... }:

{
  home.pointerCursor = {
    package = pkgs.runCommand "march-7th-cursors" {} ''
      mkdir -p $out/share/icons
      cp -r ${./march-7th-cursors} $out/share/icons/march-7th-cursors
    '';
    name = "march-7th-cursors";
    size = 24;
    gtk.enable = true;
  };
}
