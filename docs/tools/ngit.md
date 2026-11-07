### ngit

ngit is a neat Bash wrapper that allows you to set up your local Git credentials, SSH keys, and maintain your online repo on GitHub or GitLab.

### How It Works

ngit has 2 workflows:

1. One-Time Setup

- `ngit setup` walks you through setting your local Git username and email. Then, it generates an SSH key for you and guides you through setting it up.
- `ngit init` initializes a new repository in whichever folder you are in, asks you for your repo host of choice (GitHub, GitLab, or both) and sets up remotes based on that.

2. Daily Routine

- `ngit add` stages everything in your repo.
- `ngit commit` prompts you for a message and commits your changes.
- `ngit push` pushes your changes to the remote(s) that you chose.

**Bonus:** The second workflow will **NOT** run if your repo isn't already initialized.

### Usage

ngit can be used in these ways:

- `ngit help/--help/-h` - Show the CLI help menu.
- `ngit setup` - Configure your Git credentials and SSH key.
- `ngit init` - Initialize and set up a repo.
- `ngit add` - Stage all files in your repo.
- `ngit commit` - Commit your changes with a message.
- `ngit push` - Push your changes.

### Setup

It is recommended **NOT** to run `ngit setup` if you've already set up your credentials and SSH key. If you also already have an initialized Git repo,
you do not have to run `ngit init` in there, but you do have to rename your remotes as such:

1. GitHub:

`git remote rename [your old remote name] github`

2. GitLab:

`git remote rename [your old remote name] gitlab`

### Compatibility

Probably the most compatible tool on the list, ngit only requires git to be installed.
