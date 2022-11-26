{ config, pkgs, ... }:

{
  home = {
    sessionVariables = {
      EDITOR = "vim";
      BROWSER = "google-chrome";
      TERMINAL = "kitty";
      GTK_IM_MODULE = "fcitx5";
      QT_IM_MODULE = "fcitx5";
      XMODIFIERS = "@im=fcitx5";
      QT_QPA_PLATFORMTHEME = "gtk2";
      MOZ_ENABLE_WAYLAND = "1";
      SDL_VIDEODRIVER = "x11";
      _JAVA_AWT_WM_NONREPARENTING = "1";
      QT_QPA_PLATFORM = "x11";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      WLR_DRM_DEVICES = "/dev/dri/card1:/dev/dri/card0";
      #GBM
      GBM_BACKEND = "nvidia-drm";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      #vulkan
      #WLR_RENDERER="vulkan";
      #__NV_PRIME_RENDER_OFFLOAD="1";

      XDG_CURRENT_DESKTOP = "i3";
      XDG_SESSION_DESKTOP = "i3";
      XDG_CACHE_HOME = "\${HOME}/.cache";
      XDG_CONFIG_HOME = "\${HOME}/.config";
      XDG_BIN_HOME = "\${HOME}/.local/bin";
      XDG_DATA_HOME = "\${HOME}/.local/share";
      XDG_RUNTIME_DIR = "/run/user/1000";
    };
    sessionPath = [
      "$HOME/.npm-global/bin"
      "$HOME/.local/bin"
      "$HOME/Codelearning/go/bin"
    ];
  };
}
