# *DISCLAIMER: nutils is very early in development and it's primarily built for my machine. Elaboration for everything will reside in the "Compatibility" section of each tool below. Read them before running anything unless you like surprises.*

# What is nutils?

### nutils is a toolkit that consists of a bunch of utilities, big and small, that I use frequently.

## nup

### nup is a declarative-lite system manager script that:
- Installs packages that are set in ~/nutils/config/nup_packages.sh.
- Purges packages that aren't set in that config.
- Configures the Niri desktop environment, fsel app launcher, clifm file manager, ~/.bashrc, Helix text editor, and a lot more.
- Sets up permissions.
- Sets up services such as the ly greeter, Tailscale, Bluetuith and more.
- Sets up ZRAM.
- Edits /etc/pacman.conf.

### Compatibility:

As of now, I've only tested nup (and all the other tools) on my CachyOS machine, and it works, but only because it has every configuration and setting that I need. This is the most volatile tool on the list. It
**PURGES EVERY PACKAGE THAT ISN'T WHITELISTED** and overrides a lot of configuration with its own settings as mentioned above. If you still wish to use nup, do so at your own risk, and
**run the script on a fresh install of CachyOS as your current system configuration will be overridden, including ZRAM config.**

## ngame

### Probably the biggest script in this toolkit, ngame is a game launcher that:
- Supports over 20 game platforms and types, from the NES to the Dreamcast to the PS2 to the Switch, and even things like Doom, Quake, etc.
- A NEAT fzf interface where you can play just about any game you'd like that you have on disk.
- A clean folder structure.
- A whole system built around that folder structure, allowing you to move any game from your Downloads directory (or wherever it's stored) to the proper folder which ngame scans VERY easily.
- Easy game and platform listing.
- A setup command that sets up folders and game configurations.
- If you're feeling chaotic, a random command AND option in each section of the fzf interface which, surprise, picks and runs a random game! Great for when your brain is just gone for the day and you wanna mess around.

### Compatibility:
ngame will most likely work on most distros that have the packages it needs.
But once again, this is only tested on my CachyOS machine, so I'm not promising 100% stability and functionality across everywhere.

## nmusic

### nmusic is a sweet music manager and downloader that:
- Utilizes yt-dlp to download any YouTube song or just about any audio on YouTube.
- Uses the same clean fzf interface from ngame to pick any song you'd like to play, and even scans folders that are placed in the respective directory as playlists.
- Allows you to pick all songs in a folder and whether to shuffle.
- Allows you to pick one song in a folder and has an auto play feature that shuffles the playlist after playing the song of your choice.
- Utilizes mpv to play the audio.

### Compatibility:
Just like ngame, nmusic should work on any Linux system that has yt-dlp, fzf and mpv, but that doesn't mean it's flawless.

# ngit

### The reason this repo is easily updated, ngit is a git wrapper that:
- Allows easy git setup with git config and generates an SSH key and guides you through setting the SSH key up in your GitHub or GitLab account.
- Streamlines initializing a repository and neatly assigns remotes for either GitHub or GitLab (or both).
- Automates the standard procedure of maintaining a repository: add files, write a commit message, and push.

### Compatibility:
Only needs Git and ssh-keygen installed, which most people using Git would probably have.

# ncopy

### A WAY simpler utility than the others, ncopy is a tool that takes the output of a command and copies it into your clipboard.

### Compatibility:
Needs to be on a Wayland system to work for now. Sorry X11 homies, I'm prioritizing my use first. If I find a way to make it work on X11, I'll make sure to add that in, but
I would have no way of confirming functionality.

# ncat

### ncat is a small tool that functions like normal cat but with a twist:
If you feed it a PATH command, instead of erroring out with a "File/Directory not found", it just finds the exact directory that binary resides in and cats it.
It works both ways, but checks if it's a command first.

**Heads up:** if you use this on a REAL binary instead of, say, a Bash script, it will literally
cat the entire binary gibberish, so don't worry, it's not a bug, it's ncat doing exactly what it was made for.

Also, it has a special flag (packages) to cat the nup package list, and another one (nutils) to cleanly cat every tool in nutils. Both miscellaneous features.

### Compatibility:
Should work on any Linux system.

# nedit

### nedit uses the same concept as ncat but:
Instead of listing the contents of a chosen file, it edits them. Simple as that.

### Compatibility:
Uses the Helix text editor explicitly, but this is easily fixed with a quick peek inside the code. Just replace `helix` with the text editor you use.

# ndl

### ndl is a download manager of sorts:
It utilizes aria2 to parallel download a file you feed the URL of. That is quite literally it.

### Compatibility:
Uses aria2.

# nfile

### Same concept as ncopy, but:
Instead of copying the output of a command into your clipboard, it copies it into a .txt file in its designated folder.
This is especially useful when you REALLY need to paste a lot of text but you hit a limit.

### Compatibility:
Should work on any Linux system.

# Installation & Setup

Run:

```
cd ~
git clone https://github.com/prithvie256/nutils.git
```

Or:

```
cd ~
git clone https://gitlab.com/prithvie256/nutils.git
```

In your terminal.

Then, if you're using nup (read the "Compatibility" section in nup's explanation to decide this if you haven't already), run:

```
~/nutils/bin/nup
```

If not:

```
cat << EOF >> ~/.bashrc
export PATH="$HOME/nutils/bin:$PATH"
```

And you're ready to go!
