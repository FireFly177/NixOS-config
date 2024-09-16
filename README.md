# NixOS Configuration Repository

This repository contains my NixOS system configuration and home environment configuration using **Home Manager**. The configurations are stored in a single directory but are applied separately using two different commands.

## Prerequisites

Before you begin, ensure you have the following:

1. NixOS installed on your system
2. Git
3. VSCode (optional, but recommended)

## Initial Setup

1. Add Git, VSCode, and Flake to your NixOS configuration:

   ```bash
   sudo nano /etc/nixos/configuration.nix
   ```

   Add the following line:

   ```nix
   nix.settings.experimental-features = [ "nix-command" "flakes" ];
   ```
   Add packages: `git` and `vscode`

2. Rebuild NixOS:

   ```bash
   sudo nixos-rebuild switch
   ```

3. Clone this repository to your home folder:

   ```bash
   git clone https://github.com/FireFly177/NixOS-config.git
   ```

4. Copy your hardware configuration:

   ```bash
   sudo cp /etc/nixos/hardware-configuration.nix ~/NixOS-config/
   ```

   *Note: Make sure you're in the correct directory before executing this command. Replace the `hardware-configuration.nix` with your own from `/etc/nixos/`.*

## Usage

### System Rebuild

To rebuild your NixOS system with the new configuration:

```bash
sudo nixos-rebuild switch --flake .
```

### Home Rebuild

To rebuild your home environment using Home Manager:

```bash
home-manager switch --flake .
```

### Update Dependencies

To update the flake dependencies:

```bash
nix flake update
```

### Collect Garbage

To remove unused Nix store entries:

```bash
sudo nix-collect-garbage
```