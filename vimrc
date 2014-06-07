set nocompatible

"Vundle setup
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/vundle'

"Bundles github user/repo
Plugin 'altercation/vim-colors-solarized'

"Vim-scripts
"Plugin 'FuzzyFinder'

"non-github example
"Plugin 'git://git.wincent.com/command-t.git'

call vundle#end()
filetype plugin indent on

"Settings
"Gnome-terminal werkaround
if $COLORTERM == 'gnome-terminal'
    set t_Co=256 
    let g:solarized_termcolors=256
endif

syntax on
set background=dark
colorscheme solarized

set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set number

"Vim autoreload config
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
