{ config, pkgs, lib, inputs, user, ... }:

{
  nixpkgs.system = "x86_64-linux";

  networking = {
    hostName = "nixos"; # Define your hostname.
    networkmanager.enable = true;
    hosts = {
      "185.199.109.133" = [ "raw.githubusercontent.com" ];
      "185.199.111.133" = [ "raw.githubusercontent.com" ];
      "185.199.110.133" = [ "raw.githubusercontent.com" ];
      "185.199.108.133" = [ "raw.githubusercontent.com" ];
    };
  };
  time.timeZone = "Asia/Shanghai";

  i18n.defaultLocale = "en_US.UTF-8";


  security.rtkit.enable = true;
  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
    openssh = {
      enable = true;
    };
  };
  users.users.${user} = {
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" "libvirtd" "video" "audio" "input" ];
    packages = with pkgs; [
      feh
      flameshot
      simplenote
      tdesktop
      imagemagick
      google-chrome
      vscode
      jq
    ];
  };
  environment = {

    variables = {
      JAVA_HOME = "${pkgs.jdk.home}/lib/openjdk";
    };

    binsh = "${pkgs.dash}/bin/dash";
    shells = with pkgs; [ fish ];
    systemPackages = with pkgs; [
      libnotify
      git
      vim
      wget
      nixpkgs-fmt
      rnix-lsp
      direnv
      neofetch
      wl-clipboard
      wireplumber
      pipewire-media-session
      wayland
      wayland-scanner
      wayland-utils
      egl-wayland
      wayland-protocols
      pkgs.xorg.xeyes
      glfw-wayland
      xwayland
      pkgs.qt6.qtwayland
      lsd
      gcc
      jdk
      clang
      cargo
      zig
      p7zip
      atool
      unzip
      ranger
      pcmanfm
      # ffmpeg
      ffmpeg_5
      ffmpegthumbnailer
      glib
      xdg-utils
      networkmanagerapplet
      wev
      wf-recorder
      alsa-lib
      alsa-utils
      flac
      pulsemixer
      linux-firmware
      sshpass
      pciutils
      gdb
      ntfs3g
      killall
      nodejs
      socat
    ];
  };
  services.gvfs.enable = true;
  services.dbus.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.polkit.enable = true;

  nix = {
    settings = {
      substituters = [
        "https://mirror.sjtu.edu.cn/nix-channels/store"
        "https://cache.nixos.org/"
      ];
      auto-optimise-store = true; # Optimise syslinks
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 2d";
    };
    package = pkgs.nixVersions.unstable;
    registry.nixpkgs.flake = inputs.nixpkgs;
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs          = true
      keep-derivations      = true
    '';
  };
  nixpkgs.config.allowUnfree = true;
  system = {
    autoUpgrade = {
      enable = false;
      channel = "https://nixos.org/channels/nixos-unstable";
    };
    stateVersion = "22.11";
  };
}
