{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Forwall100"; # Replace with your name
    userEmail = "hezeri546@gmail.com"; # Replace with your email
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };
}
