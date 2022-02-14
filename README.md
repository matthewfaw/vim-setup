# vim-setup

This is my vim setup.

Here's how to get started:

1. If setting up a new environment:
   - Setup [Oh My Zsh](https://ohmyz.sh/#install) to make the shell look nice
   - Install [``powerline-fonts``](https://github.com/powerline/fonts) using the instructions linked in that repo. Note that, if using iTerm2, need to set both the Regular font and the Non-ASCII Font in "iTerm > Preferences > Profiles > Text" to use a patched font (Meslo LG M Bold for Powerline), per [this issue](https://github.com/powerline/fonts/issues/44).
   - It's nice to use the [``z command``](https://github.com/agkozak/zsh-z). Follow the steup instructions from that repo
2. Clone this repo
3. Create a symlink in the home directory to the vimrc in this repo using ``ln -s /full/path/to/vimrc ~/.vimrc``, and similarly for ``latexmkrc``.
4. Set up neovim: ``brew install neovim`` and ``pip3 install neovim-remote``, 
then add the following lines to your ``.zshrc`` 
file: ``export NVIM_LISTEN_ADDRESS=/tmp/nvimserver`` 
and ``alias vim="nvim -u ~/.vimrc --listen $NVIM_LISTEN_ADDRESS"``
5. Install needed packages for fzf: ``brew install the_silver_searcher fzf``
6. Install [Vundle](https://github.com/VundleVim/Vundle.vim) using ``git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim``
7. Open vim, and install all packages using: ``:VundleInstall``
8. Install [Skim](https://skim-app.sourceforge.io/) pdf viewer.
9. Set up Skim for backwards search for LaTeX: go to Preferences > Sync, then
   under PDF-TeX support, choose ``Preset: custom``, ``command: nvr``, and
   arguments ``--servername /tmp/nvimserver --remote-silent %file -c %line``

**The following plugins will be installed by running ``:VundleInstall``:**

- [Vundle](https://github.com/VundleVim/Vundle.vim)
  - a vim plugin manager
- [vim-airline](https://github.com/vim-airline/vim-airline)
  - Nice-looking status/tab line
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
  - Themes for vim-airline
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - Git plugin for vim
  - Allows vim-airline to display git branch info
- [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
  - For a nice vim color scheme
- [vimtex](https://github.com/lervag/vimtex)
  - Easily compile/load pdf/clean directory for Latex
  - Note: To compile multi-file project, specify main file using an indicator
    file ``<name of main file WITHOUT .tex>.latexmain``
  - This config also depends on Skim PDF viewer. Follow instructions in the
    above list to make the viewer work nicely with this setup
  - I use neovim for my vim editor. To make sure that backwards search works
    with Skim, make sure to open nvim listening to a server: ``nvim -u ~/.vimrc
    --listen /tmp/nvimserver``
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
  - Auto-close parens and such
- [supertab](https://github.com/ervandew/supertab)
  - Light-weight tab completion
- [NERDCommenter](https://github.com/scrooloose/nerdcommenter)
  - Easily comment lines
- [NERDTree](https://github.com/scrooloose/nerdtree)
  - Display the file tree
- [fzf.vim](https://github.com/junegunn/fzf.vim)
  - Quickly search for files (by typing ``<Leader>f``, i.e. ``\f``) 
  and text (by typing ``<Leader>a``, i.e. ``\a``)
  - Note that this relies on both ``fzf`` and ``the_silver_searcher`` being
    installed through homebrew, as mentioned above.
