cargo install starship --locked


rm -f $HOME/.config/starship.toml
curl -L https://raw.githubusercontent.com/MiMillieuh/My-base-files-Fedora-/main/Files/Starship/starship.toml -o $HOME/.config/starship.toml

gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.software packaging-format-preference "['flatpak', 'rpm']"
