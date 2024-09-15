{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;  # Enable Kitty terminal emulator

    extraConfig = ''
      # Font settings
      font_family JetBrainsMono Nerd Font Mono
      font_size 13

      # Scrollback settings
      scrollback_lines 5000

      # Ligatures
      enable_ligatures always
      mouse_hide_wait 3.0

      # Tab bar settings
      tab_bar_edge top
      tab_bar_style fade
      tab_bar_min_tabs 1

      # Window settings
      background_opacity 0.8
      window_padding_width 5
      window_border_width 2
    '';

    # enableWayland = true;
  };
}
