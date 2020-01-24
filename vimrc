set nocompatible
filetype off

""""""""""""""""""" Installed package settings """"""""""""""""""""""

"Vundle package manager
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

Plugin 'micha/vim-colors-solarized'

Plugin 'lervag/vimtex'

Plugin 'jiangmiao/auto-pairs'

Plugin 'ervandew/supertab'

Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'

Plugin 'junegunn/fzf.vim'
call vundle#end()

syntax on
filetype plugin indent on

"Setup NerdTree for file tree navigation
nmap <F2> :NERDTreeToggle<CR>
"automatically open Nerdtree on opening vim
autocmd VimEnter * NERDTree

"Settings for vimtex
let g:vimtex_view_method = 'skim'
let g:vimtex_latexmk_progname = 'nvr'
let g:tex_flavor = 'latex'

"Nice appearances
set background=dark
"set background=light
let g:solarized_termcolors=256
colorscheme solarized

" Powerline alternative: vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_spell=0
let g:airline_theme='powerlineish'
set laststatus=2
set showtabline=2
set noshowmode

"Shortcuts for searching for files and text using fzf.vim
"noremap <Leader>a :Ack <cword><cr>
noremap <Leader>f :Files<CR>
noremap <Leader>a :Ag<CR>

"nnoremap <F5> :GundoToggle<CR>

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Quacking
"function! PlaySound()
"""""silent! exec '!afplay ~/.vim/support/Quack.aiff &'
"endfunction
"autocmd CursorMovedI * call PlaySound()

""""""""""""""""""" Vim configs """"""""""""""""""""""

"Allow click navigation
"set mouse=a
"Add line numbers
set number
set relativenumber
"Spellchecking
set spell

"disables syntax highlighting after 128 columns and minlines set to 256
"Note that scrolling through LaTeX files before this was extremely slow
"but this makes it much better
set synmaxcol=128
syntax sync minlines=256

"Break lines after 79 chars
set tw=79
set cc=+1

"Spaces instead of tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"Display tabs as characters
set list
set listchars=tab:>-

""""""""""""""""""" Custom commands """"""""""""""""""""""

"Insert newline above/below cursor without entering insert mode
nmap ;o o<Esc>k
nmap ;O O<Esc>j

"Search highlighting on/off
" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

