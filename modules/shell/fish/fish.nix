{ lib, pkgs, user, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      setproxy = "export ALL_PROXY=http://127.0.0.1:7890";
      unsetproxy = "unset ALL_PROXY";
    };
    functions = {
      fish_greeting = "";
    };
  };
  home.file.".config/fish/functions/clear.fish".source = ./functions/clear.fish;
  home.file.".config/fish/functions/f.fish".source = ./functions/f.fish;
  home.file.".config/fish/functions/l.fish".source = ./functions/l.fish;
  home.file.".config/fish/functions/n.fish".source = ./functions/n.fish;
  home.file.".config/fish/functions/r.fish".source = ./functions/r.fish;
  home.file.".config/fish/functions/ls.fish".source = ./functions/ls.fish;
  home.file.".config/fish/functions/nf.fish".source = ./functions/nf.fish;
  home.file.".config/fish/functions/owf.fish".source = ./functions/owf.fish;
  home.file.".config/fish/functions/xdg-get.fish".source = ./functions/xdg-get.fish;
  home.file.".config/fish/functions/xdg-set.fish".source = ./functions/xdg-set.fish;
  home.file.".config/fish/functions/fisher.fish".source = ./functions/fisher.fish;
}
