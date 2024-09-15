{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;  # Enable Kitty terminal emulator

    extraConfig = ''
      # Font settings
      font_family FiraCode     Nerd Font Mono
      font_size 10

      # Scrollback settings
      scrollback_lines 5000

      # Ligatures
      enable_ligatures always
      mouse_hide_wait 3.0

      # Tab bar settings
      tab_bar_edge top
      tab_bar_style separator
      tab_separator " ┇"
      tab_bar_min_tabs 1

      # Window settings
      background_opacity 0.8
      window_padding_width 5
      window_border_width 2

      map alt+shift+l next_window
      map alt+shift+h prev_window
      map alt+shift+t new_window
      map alt+shift+q close_window

      # Start in fullscreen mode
      startup_mode fullscreen

      # Colors
      # The basic colors
      foreground              #cad3f5
      background              #24273a
      selection_foreground    #24273a
      selection_background    #f4dbd6

      # Cursor colors
      cursor                  #f4dbd6
      cursor_text_color       #24273a

      # URL underline color when hovering with mouse
      url_color               #f4dbd6

      # Kitty window border colors
      active_border_color     #b7bdf8
      inactive_border_color   #6e738d
      bell_border_color       #eed49f

      # OS Window titlebar colors
      wayland_titlebar_color system
      macos_titlebar_color system

      # Tab bar colors
      active_tab_foreground   #181926
      active_tab_background   #c6a0f6
      inactive_tab_foreground #cad3f5
      inactive_tab_background #1e2030
      tab_bar_background      #181926

      # Colors for marks (marked text in the terminal)
      mark1_foreground #24273a
      mark1_background #b7bdf8
      mark2_foreground #24273a
      mark2_background #c6a0f6
      mark3_foreground #24273a
      mark3_background #7dc4e4

      # The 16 terminal colors

      # black
      color0 #494d64
      color8 #5b6078

      # red
      color1 #ed8796
      color9 #ed8796

      # green
      color2  #a6da95
      color10 #a6da95

      # yellow
      color3  #eed49f
      color11 #eed49f

      # blue
      color4  #8aadf4
      color12 #8aadf4

      # magenta
      color5  #f5bde6
      color13 #f5bde6

      # cyan
      color6  #8bd5ca
      color14 #8bd5ca

      # white
      color7  #b8c0e0
      color15 #a5adcb
    '';

    # enableWayland = true;
  };
}
