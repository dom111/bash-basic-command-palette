# bash-basic-command-palette
A command palette that works from bash 3.2 using only builtins and tput

---

I've seen a couple of other command palette's that looked really good and very full featured, but these either didn't work on older bash, or needed some other dependencies, which, when working on someone elses servers, aren't always possible to install.

It's a very basic model at the moment, and I intend to add some examples when I have the time, but presently I'm using this as a switcher for my tmux sessions to allow me to jump from host to host and I'd like to make a `reverse-i-search` replacement that allows the command palette style filtering.

## Configuration

There are a few options that can be configured at the top of the script, but I do plan on moving this to a config file if it's actually a useful tool.

## Usage

    command-palette "<action>" "<newline separated list of options>"

So something like:

    command-palette "eval" "$(history | tail | perl -pe '$_=substr$_,7')"

would give you an excerpt of your history that is easily searchable.

## TODO

- Sorting
- Add a config file
- Default action
- Add left/right support for long lines
