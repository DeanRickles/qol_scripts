#!/bin/bash
####################################################################################################
#       zsh (better bash)   https://linuxopsys.com/topics/make-ubuntu-terminal-look-like-kali-linux
####################################################################################################
# Setup zsh
apt install zsh -y

# TODO: work out how to set default for vscode through this scrit.
# Once zsh has been installed, simply run the zsh command to switch from the bash prompt to the zsh prompt. When you run the command, you will see a z shell configuration prompt (select option zero from the prompt and hit enter to apply)

# Next, we'll need to install a few z shell plugins to add some useful functionality to our z shell. Here are the three plugins that will be installed.
# zsh-syntax-highlighting - This plugin highlights syntax in the z shell. It allows command highlighting when typing at a z shell prompt. This is useful for reviewing commands before running them, notably in spotting syntax errors.
# zsh-autosuggestions - this plugin suggests commands to you as you enter them based on your previous commands and completions.
apt install zsh-syntax-highlighting zsh-autosuggestions -y

# update repository.
apt update -y

# The last things you need to install are:
# qterminal - a lightweight Qt terminal emulator based on QTermWidget, by default Ubuntu uses gnome terminal.
# fonts-firacode - a free monospaced font with ligatures for common multi-character programming combinations.
# gnome-tweaks - this is a must-have tool for any GNOME user. It allows you to customize the appearance and functionality of your desktop.
apt install qterminal fonts-firacode gnome-tweaks -y

# Now that you've installed z shell and its plugins, you'll need to make it your default login shell.
# To accomplish so, we'll use the chsh (change shell) command. chsh is a powerful tool used to change a login shell.
# There is no need to install the chsh command because it is a standard package that comes pre-installed on all Linux distributions.
#
# Run the following command to change your default login shell to z shell:
# Please keep in mind that this command will permanently change your default login shell to the one you specify.
chsh -s /bin/zsh

# You need to tweak the zshrc file in order to customize it's appearance. This file is a hidden file in your home directory (~/.zshrc).
# The .zshrc file is a startup file equivalent for bashrc file for bash (Bourne Again shell) that is used to customize and configure the z shell.
# This file may not be available at times, so you must create it; if it is already available,
# delete it and create a new one because you will need to override its contents.
#
# To delete the file run the following command:
rm ~/.zshrc

# create a new file using kali-linx config:
curl "https://gitlab.com/kalilinux/packages/kali-defaults/-/raw/kali/master/etc/skel/.zshrc" --output ~/.zshrc

# After you have successfully created the .zshrc file, open it with your preferred text editor, copy and paste the contents of this pastebin into your .zshrc file, and save.
# To make the changes take effect, source your .zshrc file with the source or dot (.) command, or simply close and reopen your terminal.
# source ~/zshrc
source ~/.zshrc