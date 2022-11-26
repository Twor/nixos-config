{ config, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      dunst
    ];
  };

  home.file.".config/dunst/dunstrc".source = ./dunst/dunstrc;
  home.file.".config/dunst/images/battery-charged.png".source = ./dunst/images/battery-charged.png;
  home.file.".config/dunst/images/battery-charging.png".source = ./dunst/images/battery-charging.png;
  home.file.".config/dunst/images/battery-full.png".source = ./dunst/images/battery-full.png;
  home.file.".config/dunst/images/battery-low.png".source = ./dunst/images/battery-low.png;
  home.file.".config/dunst/images/notification.png".source = ./dunst/images/notification.png;
  home.file.".config/dunst/images/notify_dark.png".source = ./dunst/images/notify_dark.png;
  home.file.".config/dunst/images/notify_light.png".source = ./dunst/images/notify_light.png;
  home.file.".config/dunst/reload".source = ./dunst/reload;
}
