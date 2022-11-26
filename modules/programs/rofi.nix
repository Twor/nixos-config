{ lib, pkgs, user, ... }:
{
  home = {
    packages = with pkgs; [
      rofi
    ];
  };
  home.file.".config/rofi/config.rasi".source = ./rofi/config.rasi;
  home.file.".config/rofi/themes/nord.rasi".source = ./rofi/themes/nord.rasi;
  # home.file.".config/rofi/scripts/".source = ./rofi/scripts/;
}

