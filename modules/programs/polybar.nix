{ config, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
    (
      polybar.override {
        i3Support = true;
        githubSupport = true;
        pulseSupport = true;
        mpdSupport = true;
        alsaSupport = true;
      }
    )
    ];
  };
  
  home.file.".config/polybar/launch".source = ./polybar/launch;
  home.file.".config/polybar/config.ini".source = ./polybar/config.ini;
  home.file.".config/polybar/scripts/info-cava.sh".source = ./polybar/scripts/info-cava.sh;
  home.file.".config/polybar/scripts/weather.sh".source = ./polybar/scripts/weather.sh;
  home.file.".config/polybar/scripts/update.sh".source = ./polybar/scripts/update.sh;
}
