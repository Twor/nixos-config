{ config, lib, pkgs, user, impermanence, ... }:

{
  imports =
    [ (import ../../modules/desktop/i3/i3.nix) ] ++
    (import ../../modules/programs) ++
    (import ../../modules/shell) ++
    (import ../../modules/theme);

  home = {
    username = "angus";
    homeDirectory = "/home/angus";
  };
  programs = {
    home-manager.enable = true;
  };

  home.stateVersion = "22.11";
}
