{ config, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      syncthing
    ];
  };

  home.file.".config/cava/config".source = ./cava/config;
  home.file.".config/cava/config1".source = ./cava/config1;
}
