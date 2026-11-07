### ncat

ncat is a simple Bash tool that acts like cat but with a twist. If you feed it a PATH command, instead of erroring out, it will find the directory of that command and cat it.

**Heads Up:** This means that if your PATH command is a literal binary file, it will cat the binary gibberish.
So if you see that happening, don't worry, it's ncat doing what it was made for.

### Usage

- `ncat [file]` cats a file.
- `ncat [PATH command]` cats the file of the command.
- `ncat help/--help/-h` shows the CLI help menu.
- `ncat nutils` cats every nutils tool's contents neatly.
- `ncat packages` cats your nup package list.

### Compatibility

Should work on any Linux system.
