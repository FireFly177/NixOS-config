# NixOS Configuration Repository

This repository contains my NixOS system configuration and home environment configuration using **Home Manager**. The configurations are stored in a single directory, but they are applied separately using two different commands.

## Repository Structure

```plaintext
.
├── configuration.nix         # Main system configuration for NixOS
├── home.nix                  # Home Manager configuration for user environment
├── hardware-configuration.nix  # Hardware-specific config for NixOS
├── flake.nix                 # (Optional) Flake configuration
└── README.md                 # This README file

```

## Usage

add git, vscode and flake to configuration.nix
`nano /etc/nixos/configuration.nix`
`nix.settings.experimental-features = [ "nix-command" "flakes" ];`
rebuild NixOS
sudo nixos-rebuild switch

clone this repo to home folder, copy hardware-configuration.nix
`git clone https://github.com/FireFly177/NixOS-config.git`
`sudo cp /etc/nixos/hardware-configuration.nix /nix-config`

copy hardware-configuration.nix to the 
*Make sure you are in the directory before executing command, replace the hardware-configuration.nix with your hardware-configuration.nix in /etc/nixos/*
1. **System rebuild**
`sudo nixos-rebuild switch --flake  .`
1. **Home rebuild**
`home-manager --flake switch .`
1. **Update dependencies**
`nix flake update`
1. **Collect garbage**
`sudo nix-collect-garbage`