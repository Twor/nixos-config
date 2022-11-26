{ config, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      kitty
    ];
  };

  home.file.".config/kitty/kitty.conf".source = ./kitty/kitty.conf;
  home.file.".config/kitty/color.conf".source = ./kitty/color.conf;
}
