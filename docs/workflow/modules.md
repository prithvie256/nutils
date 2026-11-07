### Modules

Modules is a neat system I made for nup for executing optional processes.

### How It Works

In `~/nutils-data/nup/modules`, you can create .sh files that do certain custom operations.
nup will do a for loop in the path mentioned and execute them one by one, asking for permission to execute as it goes.
There will be NO modules in the path by default.

**Bonus:** You can use the `automodules` (or `-am`) flag to bypass the confirmation prompts.

**WARNING:** Use this system at your own discretion. I do NOT recommend using scripts from random or unverified sources.
Please be safe and don't accidentally nuke your system.
