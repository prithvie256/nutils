#/usr/bin/env bash

[[ "${BASH_SOURCE[0]}" == "${0}" ]] && echo "Do NOT run this directly, source it instead." && exit 1

essentials=(
  "base" "bash" "base-devel" "cmake" "cachyos-hooks" "cachyos-keyring"
  "cachyos-mirrorlist" "cachyos-settings" "cachyos-v3-mirrorlist" "cachyos-v4-mirrorlist" "device-mapper"
  "diffutils" "dosfstools" "e2fsprogs" "efibootmgr" "exfatprogs" "xfsprogs"
  "inetutils" "intel-ucode" "iwd" "less" "linux-cachyos" "linux-cachyos-headers"
  "linux-firmware" "mkinitcpio" "networkmanager" "nvidia-utils" "python"
  "sof-firmware" "sudo" "systemd-boot-manager" "usbutils"
  "which" "pipewire" "pipewire-alsa" "pipewire-pulse" "wireplumber" "libva-nvidia-driver"
  "lib32-nvidia-utils" "lib32-vulkan-icd-loader" "vulkan-icd-loader" "vulkan-intel"
  "egl-wayland" "logrotate" "gst-plugin-va" "lib32-opencl-nvidia" "opencl-nvidia"
  "linux-cachyos-nvidia-open" "7zip" "perl" "texinfo" "lsb-release" "lib32-llvm-libs" "llvm-libs" "cryptsetup"
  "dnsmasq" "wpa_supplicant" "glfw" "xdg-desktop-portal" "xdg-desktop-portal-gnome"
  "qt6-wayland" "qt5-wayland" "vlc" "opusfile"
)

packages=(
  "niri" "ly" "foot" "paru" "tree" "gdu" "fzf"
  "fd" "progress" "wl-clipboard" "bat"
  "bluetuith-bin" "cachyos-downgrade-git"
  "ttf-jetbrains-mono-nerd" "noto-fonts-emoji" "noto-fonts-cjk"
  "brightnessctl" "grim" "slurp" "swappy" "nwg-look"
  "distrobox" "podman" "tmux"
  "p7zip" "aria2"
  "xorg-xwayland" "xwayland-satellite"
  "helix"
  "godot"
  "fastfetch"
  "steam"
  "heimdall" "android-tools"
  "tailscale" "openssh" "scrcpy"
  "fsel-bin" "clifm-bin" "zen-browser-bin"
  "bibata-cursor-theme-bin"
  "clin-rs-bin"
  "wiiudownloader-bin"
  "flips" "mame-tools"
  "nodejs" "npm"
  "rtorrent"
)

games=(
  "osu-lazer-bin"
)

ngame_deps=(
  "fuse2" "openssl-1.1" "dotnet-sdk-bin"
  "mame" "mgba-qt" "snes9x-gtk" "simple64" "dolphin-emu" "melonds"
  "azahar-appimage-wayland" "cemu-bin" "eden-bin"
  "flycast-bin" "duckstation-preview-latest-bin"
  "pcsx2" "ppsspp" "rpcs3-bin" "uzdoom" "dhewm3" "ironwail" "yamagi-quake2"
  "quake3e-git"
)

nmusic_deps=(
  "yt-dlp" "mpv"
)
