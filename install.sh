#!bin/sh

echo "Install scipt for fedora sway dots. Be prepared to enter your root password."

# install packages
sudo dnf install git qt6-qt5compat qt6-qtdeclarative qt6-qtsvg fastfetch openssl power-profiles-daemon neovim zsh nautilus flatpak wlogout -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo -y
flatpak install com.visualstudio.code com.spotify.Client com.brave.Browser md.obsidian.Obsidian com.discordapp.Discord org.darktable.Darktable org.gimp.GIMP -y

# install config files
cp -r foot ~/.config
cp -r sway ~/.config
cp -r waybar ~/.config
cp -r wlogout ~.config
cp -r nvim ~/.config
cp -r fastfetch ~/.config
cp -r rofi ~/.config

# install wallpapers
cp -r wallpapers ~/Pictures

# change zsh shell
chsh $(which zsh)
