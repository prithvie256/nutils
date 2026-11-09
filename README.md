### nutils

### *DISCLAIMER: nutils is NOT a production-ready toolkit. It is built primarily for my machine, and there is no guarantee that it'll work flawlessly on yours.*
### *For elaboration, in every nutils tool page, there will be a "Compatibility" section. Make sure to read it to know what to expect.*

### Wait, what IS nutils?!

nutils is a toolkit that consists of a bunch of Bash scripts which I personally use frequently. They range from a few lines of code to hundreds.

### Is nutils complete?

No. nutils will never be complete. It will keep getting improvements and additions from me.

### Quick Setup

Every tool in nutils that needs persistent data uses `~/nutils-data` by default.
If you'd like to change this:

```
mkdir -p ~/.config/nutils
cd ~/.config/nutils
```

Once you're there, create a file called `env.conf`, and in there, create a variable called `data` and the value should be where you want your data to be. For example:

`data=$HOME/stuff`

### Directory:

#### The Tools

**[nup](./docs/tools/nup.md)**

**[ngame](./docs/tools/ngame.md)**

**[nmusic](./docs/tools/nmusic.md)**

**[ngit](./docs/tools/ngit.md)**

**[nproton](./docs/tools/nproton.md)**

**[ncat](./docs/tools/ncat.md)**

**[ncopy](./docs/tools/ncopy.md)**

**[nfile](./docs/tools/nfile.md)**

**[nedit](./docs/tools/nedit.md)**

**[ndl](./docs/tools/ndl.md)**

#### The Workflow

**[Paths](./docs/workflow/paths.md)**

**[Modules](./docs/workflow/modules.md)**

#### Misc

**[To-Do](./docs/misc/todo.md)**
