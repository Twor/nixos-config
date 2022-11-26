{
  programs = {
    git = {
      enable = true;
      userName = "Twor";
      userEmail = "i@twor.me";
      extraConfig = {
        pull.rebase = true;
        rebase.autoStash = true;
      };
    };
  };
}
