{ config, pkgs, user, ... }:

{
  imports =
    [ (import ./hardware-configuration.nix) ] ++
    [ (import ../../modules/programs/fcitx5.nix) ] ++
    [ (import ../../modules/programs/gpg.nix) ] ++
    [ (import ../../modules/fonts/fonts.nix) ] ++
    (import ../../modules/hardware) ++
    (import ../../modules/virtualisation);

  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        consoleMode = "auto";
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      timeout = 3;
    };
    kernelParams = [
      "quiet"
      "splash"
      "nvidia-drm.modeset=1"
    ];
    consoleLogLevel = 0;
    initrd.verbose = false;
  };

  services = {
    xserver = {
      enable = true;
      layout = "us";

      libinput = {
        enable = true;
        # disableWhileTyping = true;
      };

      displayManager = {
        sddm = {
          enable = true;
          autoNumlock = true;
        };
        defaultSession = "none+i3";
      };

      windowManager = {
        i3 = {
          enable = true;
          package = pkgs.i3-gaps;
        };
      };
    };

    syncthing = {
      enable = true;
      systemService = false;
    };
  };

  # networking.proxy.allProxy = "socks5://127.0.0.1:7891";

  programs = {
    dconf.enable = true;
    light.enable = true;
  };

}
