# vim-setup

This is my vim setup.

The easiest way to set up the .vimrc on the local machine is to:

1. Clone this repo
2. Create a symlink in the root directory to the vimrc in this repo

The following plugins are required:

- Vundle
  - a vim plugin manager
  - YouCompleteMe recommends this
  - To install plugins, you must run :PluginInstall inside of vim
- Pathogen
  - Makes it easy to install plugins
  - Most 
- YouCompleteMe
  - Have to run some extra scripts (on youcompleteme website) for these to work
  - Their website says that this works best using MacVim, but I haven't run into issues using regular vim on command line
- vim-colors-solarized
  - For a nice vim color scheme
- Powerline
  - To install, assuming fonts are installed, just run ``pip install --user powerline-status``
- NERDCommenter
  - to easily comment lines
- NERDTree
  - to display the file tree
- Gundo
  - To display the undo tree

The following plugins aren't required, but are quite nice to have:

- jiangmiao/auto-pairs
  - A nice plugin for auto-closing brackets.  Works quite nicely
