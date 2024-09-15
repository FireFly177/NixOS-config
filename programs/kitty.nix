{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;  # Enable Kitty terminal emulator

    # Kitty settings written to $XDG_CONFIG_HOME/kitty/kitty.conf
    settings = {
      # Font settings
      font_family = "FiraCode Nerd Font";
      font_size = 13.0;

      # Enable scrolling back in the terminal
      scrollback_lines = 5000;

      # Enable ligatures
      enable_ligatures = "always";

      # Set window padding
      window_padding_width = 10;

      # Set colors
      background = "#1c1c1c";
      foreground = "#d0d0d0";

      # Color scheme
      color0 = "#2e2e2e";
      color1 = "#d70000";
      color2 = "#5f8700";
      color3 = "#af8700";
      color4 = "#1f5bff";
      color5 = "#d700af";
      color6 = "#00afaf";
      color7 = "#e4e4e4";
      color8 = "#4e4e4e";
      color9 = "#ff5f5f";
      color10 = "#87d75f";
      color11 = "#ffd700";
      color12 = "#5fafd7";
      color13 = "#ff5faf";
      color14 = "#5fd7d7";
      color15 = "#ffffff";
    };

    enableWayland = true;
  };
}
