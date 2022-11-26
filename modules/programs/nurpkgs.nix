(
  { config, ... }:

  {
    environment.systemPackages = [
      config.nur.repos.linyinfeng.icalingua-plus-plus
      config.nur.repos.Twor.xmcl-launcher
    ];
  }
)
