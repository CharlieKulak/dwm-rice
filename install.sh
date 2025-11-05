sudo dnf install @development-tools libX11-devel libXft-devel libXinerama-devel
sudo make clean install && cd blocks-btw && sudo make clean install
sudo dnf install xorg-x11-server-Xorg xorg-x11-xinit xterm
sudo dnf install rofi firefox alacritty picom feh
mkdir ../.config/picom
echo "# Backend
backend = "glx";
vsync = true;
experimental-backends = true;

# Transparency
inactive-opacity = 1;

frame-opacity = 1;
inactive-opacity-override = false;

# Shadows
shadow = true;
shadow-radius = 12;
shadow-opacity = 0.4;
shadow-offset-x = -12;
shadow-offset-y = -12;

# Fading
fading = false;
fade-in-step = 0.03
fade-out-step = 0.03;
fade-delta = 5;

# Corners
corner-radius = 0;

# Exclusions
shadow-exclude = [
  "class_g = 'dmenu'",
  "class_g = 'polybar'",
  "name = 'Notification'",
  "_GTK_FRAME_EXTENTS@:c"
];

# Blur (optional)
#blur-method = "dual_kawase";
#blur-size = 10;" ~/.config/picom/picom.conf

echo "picom -b

feh --bg-fill /home/charlie/dwm-btw/wallpapers/wall6.png
dwmblocks &
exec dwm" ../.xinitrc

echo "Ok done type startx and it should work lol"
