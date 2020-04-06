"settings------------------------------------

"set autoindent		"reasonable auto-indent
"set smartindent
filetype plugin indent on

syntax enable		                        "enable syntax processing

set tabstop=4		                        "each read tab = 4 spaces
set shiftwidth=4
set softtabstop=4	                        "each entered tab = 4 spaces
set expandtab		                        "tab is alias for insert ^ many spaces, dunno if i like it yet

set number		                            "show line numbers
"set cursorline		                        "highlights current line - SLOWS DOWN SCROLLING; SUPER ANNOYING

set showmatch		                        "highlight matching parenthesis/bracket

set incsearch		                        "search while typing characters into search
set hlsearch		                        "highlight search matches

"use Shift+directional key to change tabs
noremap <S-up> :tabr<CR>
noremap <S-down> :tabl<CR>
noremap <S-left> :tabp<CR>
noremap <S-right> :tabn<CR>

"Search files with Shift-cc
"please don't mess with whitespace at end of line
noremap <S-C><S-C> :Ag 

"if !exists('g:lasttab')
"    let g:lasttab = 1
"endif
"noremap <S><S> :exe "tabn ".g:lasttab<CR>
"au TabLeave * let g:lasttab = tabpagenr()

colorscheme badwolf	                        "colorschemes are *.vim files in .vim/colors
let g:airline_theme='badwolf'               "set status bar theme
"plugins--------------------------------------
"auto install vim-plug (plugin manager)
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"specify directory for plugins
call plug#begin('~/.vim/plugged')
"all plugins must be below here
Plug 'rking/ag.vim'                         "multi-file search and open from within vim 
Plug 'vim-airline/vim-airline'              "status bar at bottom of window
Plug 'vim-airline/vim-airline-themes'       "themes for status bar
"all plugins must be above here
call plug#end()
