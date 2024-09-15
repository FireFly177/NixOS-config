{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    initExtra = ''
      # Custom aliases
      alias ll='ls -la'
      # alias gs='git status'
      
      # Custom Bash functions
      # myfunc() {
      #   echo "This is a test function"
      # }
    '';
  };
}
