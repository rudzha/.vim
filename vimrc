

"Vundle setup
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/vundle'

"Bundles github user/repo
Plugin 'altercation/vim-colors-solarized'
Plugin 'Shougo/neocomplete'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

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
"Solarized
syntax on
set background=dark
colorscheme solarized

"Neocomplete
let g:neocomplete#enable_at_startup = 1
"Syntastic
let g:synstastic_javascript_checkers = ['jshint']
"Powerline
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

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
