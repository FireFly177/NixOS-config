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
*Make sure you are in the directory before executing command, replace the hardware-configuration.nix with your hardware-configuration.nix in /etc/nixos/*
1. **System rebuild**
`nixos-rebuild --flake switch .`
2. **Home rebuild**
`home-manager --flake switch .`
3. **Update dependencies**
`nix flake update`
4. **Collect garbage**
`sudo nix-collect-garbage`