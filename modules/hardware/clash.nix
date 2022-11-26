{ config, lib, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.clash
  ];
  systemd.services."clash@" = {
    enable = true;

    unitConfig = {
      description = "Clash daemon, A rule-based proxy in Go.";
      after = "network.target";
    };
    serviceConfig = {
      Type = "simple";
      Restart = "always";
      RestartSec = 1;
      ExecStart = "/etc/profiles/per-user/angus/bin/clash -d /home/angus/.config/clash";
    };
    wantedBy = [ "multi-user.target" ];
  };
}
