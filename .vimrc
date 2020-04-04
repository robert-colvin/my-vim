"set autoindent		"reasonable auto-indent
"set smartindent
filetype plugin indent on

syntax enable		"enable syntax processing

set tabstop=4		"each read tab = 4 spaces
set shiftwidth=4
set softtabstop=4	"each entered tab = 4 spaces
set expandtab		"tab is alias for insert ^ many spaces, dunno if i like it yet

set number		"show line numbers
"set cursorline		"highlights current line - SLOWS DOWN SCROLLING; SUPER ANNOYING

set showmatch		"highlight matching parenthesis/bracket

set incsearch		"search while typing characters into search
set hlsearch		"highlight search matches

colorscheme badwolf	"colorschemes are *.vim files in .vim/colors
