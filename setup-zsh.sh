#!/bin/bash
# Generated with Gemini.
#
# This script configures your Ubuntu terminal to use Zsh.

## 1. Update package list and install Zsh
echo "Updating package list and installing Zsh..."
sudo apt update  -y
sudo apt install -y zsh

## 2. Set Zsh as the default shell
echo "Setting Zsh as the default shell..."
chsh -s $(which zsh)

echo "Zsh has been installed and set as your default shell."
echo "You need to log out and log back in for the changes to take effect."

## 3. Install Oh My Zsh using curl
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## 4. Configure Oh My Zsh (Optional)
# Change the theme to 'agnoster' (or your preferred theme)
echo "Changing Oh My Zsh theme to 'agnoster'..."
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

# Enable plugins (git and zsh-autosuggestions)
echo "Enabling plugins: git and zsh-autosuggestions..."
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/g' ~/.zshrc

# Install zsh-autosuggestions plugin
echo "Installing zsh-autosuggestions plugin..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Apply changes by sourcing the .zshrc file
echo "Applying changes..."
source ~/.zshrc

echo "Oh My Zsh has been installed and configured."
echo "Remember to log out and log back in to see the changes."

## 5. Set a custom prompt
echo "Setting a custom prompt..."
echo "PROMPT='%F{green}%n%f@%F{magenta}%m%f:%F{blue}%~%f$ '" >> ~/.zshrc

echo "Configuration complete!"
