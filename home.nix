{ config, pkgs, ... }:

{
  home.username = "duynguyen";
  home.homeDirectory = "/home/duynguyen";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    pkgs.hello

  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'. 
  home.file = {
  };
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  imports = [
    ./programs/git.nix
    ./programs/bash.nix
    ./programs/kitty.nix
    ./programs/plasma.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
