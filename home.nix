  { config, pkgs, plasma-manager, ... }:

  {
    home.username = "duynguyen";
    home.homeDirectory = "/home/duynguyen";

    home.stateVersion = "24.05"; # Please read the comment before changing.

    home.packages = [
      # pkgs.hello
    ];

    home.file = {
    };
    home.sessionVariables = {
      # EDITOR = "emacs";
    };

    imports = [
      # plasma-manager.homeManagerModules.plasma-manager
      ./programs/git.nix
      ./programs/bash.nix
      ./programs/kitty.nix
      ./programs/plasma.nix
    ];

    programs.home-manager.enable = true;
  }
