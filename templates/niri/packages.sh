#/usr/bin/env bash

[[ "${BASH_SOURCE[0]}" == "${0}" ]] && echo "Do NOT run this directly, source it instead." && exit 1

cpu_pkg=""

if grep -q "GenuineIntel" /proc/cpuinfo; then
  cpu_pkg="intel-ucode"
elif grep -q "AuthenticAMD" /proc/cpuinfo; then
  cpu_pkg="amd-ucode"
fi

gpu_pkgs=()

if lspci | grep -iE "vga|3d|display" | grep -i "nvidia" &>/dev/null; then
  gpu_pkgs+=(
    "nvidia-utils" "libva-nvidia-driver"
    "lib32-nvidia-utils" "lib32-opencl-nvidia"
    "opencl-nvidia" "linux-cachyos-nvidia-open"
  )
fi

if lspci | grep -iE "vga|3d|display" | grep -i "amd" &>/dev/null; then
  gpu_pkgs+=("mesa" "vulkan-radeon" "lib32-vulkan-radeon")
fi

if lspci | grep -iE "vga|3d|display" | grep -i "intel" &>/dev/null; then
  gpu_pkgs+=("mesa" "vulkan-intel" "lib32-vulkan-intel" "intel-media-driver")
fi

essentials=(
  "base" "bash" "base-devel" "cmake" "cachyos-hooks" "cachyos-keyring"
  "cachyos-mirrorlist" "cachyos-settings" "cachyos-v3-mirrorlist" "cachyos-v4-mirrorlist" "device-mapper"
  "diffutils" "dosfstools" "e2fsprogs" "efibootmgr" "exfatprogs" "xfsprogs"
  "inetutils" "iwd" "less" "linux-cachyos" "linux-cachyos-headers"
  "linux-firmware" "mkinitcpio" "networkmanager"  "python"
  "sof-firmware" "sudo" "systemd-boot-manager" "usbutils"
  "which" "pipewire" "pipewire-alsa" "pipewire-pulse" "wireplumber"
  "lib32-vulkan-icd-loader" "vulkan-icd-loader"
  "egl-wayland" "logrotate" "gst-plugin-va"
  "7zip" "perl" "texinfo" "lsb-release" "lib32-llvm-libs" "llvm-libs" "cryptsetup"
  "dnsmasq" "wpa_supplicant" "glfw" "xdg-desktop-portal" "xdg-desktop-portal-gnome"
  "qt6-wayland" "qt5-wayland" "vlc" "opusfile"
)

essentials+=(
  "$cpu_pkg"
  "${gpu_pkgs[@]}"
)

packages=(
  "niri" "ly" "foot" "paru" "tree" "gdu"
  "wl-clipboard"
  "bluetuith-bin" "cachyos-downgrade-git"
  "ttf-jetbrains-mono-nerd" "noto-fonts-emoji" "noto-fonts-cjk"
  "brightnessctl" "grim" "slurp" "swappy" "nwg-look"
  "p7zip" "aria2"
  "xorg-xwayland" "xwayland-satellite"
  "helix" "fastfetch" "openssh"
  "fsel-bin" "clifm-bin" "zen-browser-bin"
  "bibata-cursor-theme-bin"
)

games=(
)

nutils_deps=(
  "fd" "fzf"
)

ngame_deps=(
  "fuse2"
  "steam" "uzdoom" "dhewm3" "ironwail" "yamagi-quake2" "quake3e-git"
  "mame" "mgba-qt" "snes9x-gtk" "simple64" "dolphin-emu" "melonds"
  "azahar-appimage-wayland" "cemu-bin" "eden-bin"
  "flycast-bin" "pcsx2" "ppsspp" "rpcs3-bin"
)

nmusic_deps=(
  "yt-dlp" "mpv"
)
