### nup

nup is a declarative-lite system manager Bash script for CachyOS. It handles things like installing/removing packages and system configuration.

### How It Works

nup utilizes 3 concepts:

- Packages (`packages.sh`):

A flexible whitelist system. nup checks the installed packages on your machine and compares it to the whitelist that is generated from this package list.
It then installs any apps that are missing from your system and **PURGES** the packages that aren't in the whitelist.
I repeat, it will **PURGE** any package that is not in the whitelist.

- Paths (`paths/` and `configs/`):

A modular .conf based system. To learn how to utilize Paths, check out the [Paths](../workflow/Paths.md) page.

- Modules (`modules/`):

A script execution system for any optional settings. To learn how to utilize Modules, check out the [Modules](../workflow/modules.md) page.

**Bonus:** nup also hardcodes exactly **FOUR** essential processes that wouldn't be suitable as a Module:

- Permissions:

nup makes sure that you have full read/write access to every file and folder in your home directory.
This is actually something that should be default in most OSes, but I personally HAVE experienced permission issues
in my home directory, so this is a thing that I think should be essential.

- Enabling Ly:

nup makes sure that the Ly greeter is enabled so that you can actually get into your Desktop Environment/Window Manager.

- Enabling Bluetooth:

This is mostly a quality-of-life thing, but most users use Bluetooth, so nup enables it for you.

- Clearing cache:

nup clears the `~/.cache` folder and Paru/Pacman's cache.

### Usage

nup can be used in a few ways, for example:

- `nup` does a normal nup run.
- `nup help/--help/-h` shows the CLI help menu.
- `nup quick/-q` does an nup run without touching your packages.
- `nup automodules/-am` does an nup run that bypasses the confirmation prompt for executing modules. Good for power users.
- `nup dry/-d` does a dry run when doing any process involving packages. Good to know what will happen to your system without committing yet.

Keep in mind that the latter 3 flags can be used together in any order.

**Bonus:** `nup quick` and `nup dry` will be useless when ran together because the dry run will happen regardless.

### First Run Experience

When you run nup for the first time, it will prompt you with:

```
Configuration folder not found. Pick a sane default (type the corresponding number):
1. Niri
More will be added soon.
```

This is because nup needs a folder to store the `packages.sh`, `paths/`, `configs/` and `modules/` that I explained a little about before.
As seen in the prompt, the only option for now is Niri as it is my Window Manager. Over time, I'll probably add more things here, no promises though.

Once you pick an option, nup will prompt you for your sudo password. This is needed for Paru and a few other processes to function properly.
After this, the normal procedure of nup will take over, and you'll be good to go!

### Compatibility

nup is a VERY volatile tool. It runs only on CachyOS, I've tested it only on my machine, and more importantly:

**nup PURGES packages that aren't whitelisted.**

I just want to stress that to you again, even after I did it two times before because purging is a strong word, and nup
does exactly that. It is **DESTRUCTIVE**. If you wish to use nup, do so at your own risk, and

**If you care about your personal configurations, DO NOT use nup, at least until you've set up your Paths properly.**
**It is HIGHLY recommended to run nup on a new system.**

If you wish to configure nup yourself using the Paths system, check out the documentation [here](../workflow/paths.md).
