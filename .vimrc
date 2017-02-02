set nocompatible
filetype off

set spell
set list
set listchars=tab:>-

noremap <Leader>a :Ack <cword><cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
call vundle#end()

set number
syntax enable
execute pathogen#infect()
filetype plugin indent on
filetype plugin on
set mouse=a
set background=dark
"set background=light
let g:solarized_termcolors=256
colorscheme solarized

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let g:Powerline_symbols = 'fancy'
set laststatus=2
set showtabline=2
set noshowmode
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
nnoremap <F5> :GundoToggle<CR>
"Insert newline above/below cursor without entering insert mode
nmap ;o o<Esc>k
nmap ;O O<Esc>j

"nmap <F3> :NERDTree<CR>
nmap <F2> :NERDTreeToggle<CR>
"automatically open Nerdtree on opening vim
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>


"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Quacking
"function! PlaySound()
   ""silent! exec '!afplay ~/.vim/support/Quack.aiff &'
"endfunction
"autocmd CursorMovedI * call PlaySound()
