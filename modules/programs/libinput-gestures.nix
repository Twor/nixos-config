{ config, lib, pkgs, ... }:

{
  home = {
    packages = with pkgs; [
      libinput-gestures
      wmctrl
      xdotool
    ];
  };

  home.file.".config/libinput-gestures.conf".source = ./libinput-gestures/libinput-gestures.conf;
}
