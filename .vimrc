set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" added nerdtree
Plugin 'scrooloose/nerdtree'
" added YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
"added vim-airline

Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'prettier/vim-prettier'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

set number
set relativenumber

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab


set laststatus=2
set statusline=
set statusline+=%2*\%l
set statusline+=\%*
set statusline+=%1*\ <<
set statusline+=%1*\ %f\ %*
set statusline+=%1*\ >>
set statusline+=%1*\ %m
set statusline+=%3*\ %F
set statusline+=%=
set statusline+=%3*\ <<
set statusline+=%3*\ ::
set statusline+=%3*\ %n
set statusline+=%3*\ >>\%*
hi User1 guifg=#FFFFFF guibg=#191f26 gui=BOLD
hi User2 guifg=#000000 guibg=#959ca6
hi User3 guifg=#000000 guibg=#4cbf99

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

" Read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>6jwf>a
