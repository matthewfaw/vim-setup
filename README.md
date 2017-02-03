# vim-setup

This is my vim setup.

The easiest way to set up the .vimrc on the local machine is to:

1. Clone this repo
2. Create a symlink in the root directory to the vimrc in this repo

The following plugins are required:

- Vundle - https://github.com/VundleVim/Vundle.vim
  - a vim plugin manager
  - YouCompleteMe recommends this
  - To install plugins, you must run :PluginInstall inside of vim
- Pathogen - https://github.com/tpope/vim-pathogen
  - Makes it easy to install plugins
  - Most plugins recommend this
- YouCompleteMe - https://valloric.github.io/YouCompleteMe/
  - Have to run some extra scripts (on youcompleteme website) for these to work
  - Their website says that this works best using MacVim, but I haven't run into issues using regular vim on command line
- vim-colors-solarized - https://github.com/altercation/vim-colors-solarized
  - For a nice vim color scheme
- Powerline - https://github.com/powerline/powerline
  - To install, assuming fonts are installed, just run ``pip install --user powerline-status``
- NERDCommenter - https://github.com/scrooloose/nerdcommenter
  - to easily comment lines
- NERDTree - https://github.com/scrooloose/nerdtree
  - to display the file tree
- Gundo - https://github.com/sjl/gundo.vim
  - To display the undo tree

The following plugins aren't required, but are quite nice to have:

- jiangmiao/auto-pairs - https://github.com/jiangmiao/auto-pairs
  - A nice plugin for auto-closing brackets.  Works quite nicely
