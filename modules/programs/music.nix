{ config, pkgs, ... }:

{
  home = {
    packages = with pkgs; [
      spotify
      spotify-cli-linux
    ];
  };
}
