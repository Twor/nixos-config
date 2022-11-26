{
  programs = {
    git = {
      enable = true;
      userName = "Twor";
      userEmail = "i@twor.me";
      extraConfig = {
        url = {
          "ssh://git@github.com:Twor" = {
            insteadOf = "https://github.com/Twor/";
          };
        };
        pull.rebase = true;
        rebase.autoStash = true;
      };
    };
  };
}
