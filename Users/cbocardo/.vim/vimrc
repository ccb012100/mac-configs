set expandtab " pressing <TAB> inserts spaces
set hlsearch " highlight matches
set incsearch " search as characters are entered
set formatoptions+=j " remove comment leader when joining lines
set history=1000
set laststatus=2 " always show statusline
set lazyredraw
set list " show whitespace
set number relativenumber " toggle hybrid line numbers
set ruler " displays cursor position
set showcmd " show last command in bottom bar
set showmatch " highlight matching brackets/parens
set softtabstop=4
set tabstop=4
set termguicolors " true color terminal
set wildmenu " visual autocomplete for command menu
set ttimeoutlen=50 " switch quick between modes

""
"" create backup files and save to /tmp
""
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Show cursorline and columnline in Insert Mode
" Only use relative line numbers in Normal Mode
:autocmd InsertEnter * set cursorline cursorcolumn norelativenumber
:autocmd InsertLeave * set nocursorline nocursorcolumn relativenumber

hi Cursor ctermbg=black " current line bg=black in Normal mode
hi Normal ctermbg=darkgray " current line bg=darkgray in Insert moden

" Change cursor shape between insert/normal/replace mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm2"
   let &t_SI = "\<Esc>]50;CursorShape=1\x7" " insert mode
   let &t_SR = "\<Esc>]50;CursorShape=2\x7" " replace mode
   let &t_EI = "\<Esc>]50;CursorShape=0\x7" " all other modes
endif
