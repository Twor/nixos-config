{ config, pkgs, ... }:
{
  #imports = [ ../../environment/i3-variables.nix ];
  home = {
    packages = with pkgs; [
    ];
  };

  home.file.".config/i3/config".source = ./i3/config;
  home.file.".config/i3/imgs/1.png".source = ./i3/imgs/1.png;
  home.file.".config/i3/imgs/2.png".source = ./i3/imgs/2.png;
  home.file.".config/i3/scripts/feh.sh".source = ./i3/scripts/feh.sh;
  home.file.".config/i3/scripts/lock.sh".source = ./i3/scripts/lock.sh;
  home.file.".config/i3/scripts/setmonitor.sh".source = ./i3/scripts/setmonitor.sh;
}
