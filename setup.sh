sudo pacman -S --noconfirm --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S wofi hyprland-git waybar-git swaync swayidle wlogout hyprpaper swayidle watershot hyprlock hypridle clipman greetd pipewire wireplumber xdg-desktop-portal-hyprland polkit-kde-agent qt5-wayland qt6-wayland --needed --noconfirm
