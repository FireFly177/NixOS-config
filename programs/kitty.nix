{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;  # Enable Kitty terminal emulator

    # Kitty settings written to $XDG_CONFIG_HOME/kitty/kitty.conf
    settings = {
        # Font settings
        font_family = "JetBrainsMono Nerd Font Mono";
        font_size = 13;

        scrollback_lines = 5000;

        enable_ligatures = "always";
        mouse_hide_wait 3.0

        tab_bar_edge "top";
        tab_bar_style "fade";
        tab_bar_min_tab 1;

        background_opacity 0.8;
        # Set window padding
        window_padding_width = 5;
        window_border_width = 2;

    };

    # enableWayland = true;
  };
}
