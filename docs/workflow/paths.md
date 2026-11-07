### Paths

Paths is a modular system I made for nup to be able to easily create your own configurations in an organized manner.

### How It Works

In `~/nutils-data/nup/paths`, there will be .conf files. These .conf files will have exactly 2 variables:

- target_file - The path to the configuration file in `~/nutils-data/nup/configs`.
- destination - The path that target_file should be sent to.

I have already set up a few essential configurations using this system, so you can see how they work there, copy them and modify them to your needs.

nup will do a for loop inside `~/nutils-data/nup/paths`, and in the loop, it will source the .conf files one by one and do the operations
needed to copy over the configuration files.
