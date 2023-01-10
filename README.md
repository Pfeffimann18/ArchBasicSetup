# ArchBasicSetup
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/ArchSetup)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/ArchSetup)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/ArchSetup)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/ArchSetup)
</br> </br>

# yay AUR-Helper
```bash
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si
cd ..
rm -r yay/
``` 
</br> </br>

# Themes
```bash
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme && cd cd WhiteSur-gtk-theme
./install.sh
./install.sh -t red
./install.sh -t green
```
```bash
git clone https://github.com/vinceliuice/McMojave-circle && cd McMojave-circle
./install.sh
./install.sh -red
./install.sh - green
```
```bash
git clone https://github.com/vinceliuice/WhiteSur-icon-theme && cd WhiteSur-icon-theme
./install.sh
./install.sh -t red
./install.sh -t green
```
```bash
yay -S apple_cursor
```
</br> </br> 

# [ZSH](https://github.com/Pfeffimann18/ZSH)
```bash
neofetch --config ~/.config/neofetch/configZSH.conf

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

cd ~
export ZSH="$HOME/.oh-my-zsh"
export PATH=~/.local/bin:$PATH
export "MICRO_TRUECOLOR=1"
alias ls='logo-ls'
alias uhr='tty-clock -s -c -B -C1'
alias v="nvim"

alias zconfig='nvim ~/.zshrc'
alias zsource='source ~/.zshrc'
alias bspwmconf='nvim ~/.config/bspwm/bspwmrc'
alias sxhkdconf='nvim ~/.config/sxhkd/sxhkdrc'
alias sxrestart='pkill -USR1 -x sxhkd'
alias connect95='nmcli device wifi connect NETGEAR95 password ********'
alias connect57='nmcli device wifi connect NETGEAR57 password ********'
alias firefox-pv='firefox --private-window'

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-autosuggestions zsh-syntax-highlighting git archlinux sudo)
source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_HIDDEN='true'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$PATH:/home/leon/.spicetify
```
</br>

# Programme

## Grundlegende Programme
```bash
sudo pacman -S firefox thunderbird neofetch git code python-spotdl conky conky-manager
```

## GTK Apps
```bash
sudo pacman -S file-roller thunar nautilus tilix
```

## Qt5 Apps
```bash
sudo pacman -S gwenview dolphin ark konsole kshutdown
```

## CLI Apps
```bash
sudo pacman -S neovim alacritty btop rofi emacs ranger
```

```bash
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
```
> [Doom Emacs](https://github.com/doomemacs/doomemacs)
> [Purify](https://github.com/kyoz/purify)

## Medien
```bash
sudo pacman -S gimp vlc rhythmbox audacity
yay -S davinci-resolve
```

# sonstige Anpassungen

## `ls` mit Icons
```bash
yay -S logo-ls
alias ls=logo-ls
which ls
grep -r 'alias[ \t]\+ls' ~ /etc
```
</br> </br>

## Fonts
```bash
sudo mkdir /usr/share/fonts/custom
sudo cp Fonts/* /usr/share/fonts/custom
``` 
</br> </br>

## Wallpaper
```bash
sudo mkdir /usr/share/wallpaper
sudo cp Wallpaper/* /usr/share/Wallpaper
```
Zusätzlich noch die Catppuccin-Wallpaper aus meiner anderen [Repo](https://github.com/Pfeffimann18/Catppuccin/#wallpapers)
</br> </br>

## Konfigurationsdateien kopieren und bearbeiten
```bash
cp alacritty.yml ~/.config
cp picom.conf ~/.config/
```
Anschließend öffnen sie `/etc/pacman.conf` und fügen `ParallelDownloads = 5`, `Color` und `ILoveCandy` ein. 
</br> </br>

## Touchpad - Tippen um zu Klicken
```
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/
```
- zum Aktivieren des Linksklick durch tippn auf dem Touchpad 
</br> </br>

## [LY](https://github.com/fairyglade/ly) - Displaymanager
LY ist ein schlichter Displaymanager im Konsolen-Design.

<p align="center">
  <img src="https://thumbs2.imgbox.com/33/8e/ahK81Qtk_t.png" width="900px">
</p>

```
yay -S ly
sudo systemctl disable lightdm.service
sudo systemctl enable ly.service
```
</br> </br>

## rEFInd - Bootmanager
Installiert den rEFInd-Bootmanager und das macOS-Thema.

<p align="center">
  <img src="https://thumbs2.imgbox.com/4b/f5/V9FDFr5B_t.png" width="900px">
</p>

```
refind-install
sudo cp -r refind/Catppuccin /boot/efi/EFI
```