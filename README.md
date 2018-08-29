# bash-basic-command-palette
A command palette that works from bash 3.2 using only builtins and `tput`

[![asciicast](https://asciinema.org/a/196375.png)](https://asciinema.org/a/196375)

---

I've seen a couple of other command palettes that looked really good and very full featured, but these either didn't work on older bash, or needed some other dependencies, which, when working on someone elses servers, aren't always possible to install.

It's a very basic model at the moment, and I intend to add some examples when I have the time, but presently I'm using this as a switcher for my tmux sessions to allow me to jump from host to host and I'd like to make a `reverse-i-search` replacement that allows the command palette style filtering.

## Configuration

There are a few options that can be configured at the top of the script, but I do plan on moving this to a config file if it's actually a useful tool.

## Usage

    command-palette <action> <list option> [<list option>, ...]
    command-palette "<list options separated by newlines>"

So something like:

    command-palette eval "$(history | tail | cut -c8-)"

would give you an excerpt of your history that is easily searchable.

If you provide a string that contains newlines, that item will be split on newlines into individual options, you can also just supply a list of arguments. To preserve spaces in items, use quotes, or escape them:

    command-palette echo Item 1 "Item 2" Item\ three 'Item 4'

produces:

     |    
     * Item   
       1   
       Item 2   
       Item three   
       Item 4   

The default `<action>` is to call `echo`.

## Command-line Options

- `-k` - *k*eeps the command palette open after executing `<action>`.

## Keyboard Shortcuts

When in the command-palette interface, <kbd>Esc</kbd> <kbd>BkSp</kbd> will clear the filter, and you can use <kbd>Esc</kbd> <kbd>Esc</kbd> to quit without executing `<action>`. When navigating the list, the <kbd>↑</kbd> and <kbd>↓</kbd> arrows move up and down the list, <kbd>PgUp</kbd> and <kbd>PgDn</kbd> move up or down half a screen of items, and <kbd>Home</kbd> and <kbd>End</kbd> move to the beginning and end of the list respectively.

## TODO

- [x] Default action
- [x] Option to prefill the filter
- [x] Add an optional title
- [ ] Sorting
- [ ] Add a config file
- [ ] Add left/right support for long lines
- [ ] Intelligent screen repainting
- [ ] Multi-select
- [ ] Accept a pipe (need to differentiate pipe input and subsequent key input via `read`...)
