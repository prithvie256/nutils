# nutils

## What IS nutils?

#### nutils is a toolkit of various Bash scripts that I use daily/frequently. Most of these scripts are very opinionated, and I will make them more idempotent, flexible, and user friendly as time goes on.

## The Tools

### nup

#### nup is a clean and deterministic system manager. The way it works is just "run things in order perfectly, every time, with failsaves for any errors/null values". Currently, it manages packages, dotfiles, services and more. You can imagine it like NixOS but I like this better because it's rawer. And yes, NixOS IS what made me make nup.

### nrun

#### nrun is a multiplatform game launcher that unifies a bunch of emulators, Wine, native portable games, Steam, games installed with your package manager, Doom, Quake, and so on into a clean fzf interface. It's a never ending project because as new emulators come in, I'll add support. Same for other platforms, not just emulation. It also has additional features such as easy game moving (since it uses its own folder structure for games), game listing, platform listing, etc.

### nmusic

#### nmusic is a music player and downloader that utilizes and streamlines mpv and yt-dlp into an easy-to-use CLI.

### ngit

#### ngit is the reason this repo is online. It's a git wrapper that handles setup, SSH key generation, initializing a repo, adding files, doing a commit, pushing files, etc.

### ncopy

#### ncopy is literally just a tiny script that when used, appends | wl-copy to the command that is passed.

### ncat

#### ncat is another tiny script that lets you cat a PATH binary instead of having to pass the full path of it every time. Also works like normal cat.

### nedit

#### nedit is yet ANOTHER tiny script that is basically ncat but for editing files with Helix, the text editor.

## When will this toolkit be complete?

#### Never. This is a toolkit that will ALWAYS be improved upon throughout its existence. No tool here is close to complete or perfect. Most are barely flexible, which is why I call it opinionated.

## Are these tools in a state where they can be released to the public as actual utilities?

#### Not yet. These tools are not really VERY user friendly or flexible, and as mentioned before, improvements will keep coming. Hopefully one day I can release them as actual tools, though!

## Installation

#### Run:
```git clone https://github.com/nerdling256/nutils```
#### Or:
```git clone https://gitlab.com/nerdling256/nutils```
