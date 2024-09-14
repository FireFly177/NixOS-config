{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;

    # General Git configuration
    userName = "DuyNguyen";
    userEmail = "huonghaiduynhim@gmail.com";
    
    # Additional configurations can be added here
    # extraConfig = ''
    #   # Example of adding extra Git configurations
    #   [core]
    #     editor = "vim"
    #   [alias]
    #     st = "status"
    #     co = "checkout"
    # '';
  };
}
