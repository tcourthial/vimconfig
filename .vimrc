"------------------------------------------------------------------------------"
"--------------------------------- Global -------------------------------------"
"------------------------------------------------------------------------------"
"Indent
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

"Scroll 
set scrolloff=15

"hlsearch
set hlsearch incsearch

"Set <backspace> free
set backspace=start,indent,eol

"Code folding
set foldmethod=manual

"lowercase search = case insensitive 
"search with at least one uppercase letter : case sensitive
set ignorecase
set smartcase
"
"--------------------------------- Global remap -------------------------------"
"remap leader
let mapleader = ','
"paste mode toggle
nnoremap <leader>p :set paste!<cr>
"line numbers toggle
nnoremap <leader>l :set number!<cr>
"uppercase in insert mode
inoremap <c-u> <esc>bveUi 
"add quotes to current word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"Shortcut for tabnew
nnoremap <leader>tn :tabnew<cr>
"------------------------------------------------------------------------------"
"--------------------------------- Vimrc --------------------------------------"
"------------------------------------------------------------------------------"
"Opens vimrc in a new tab
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
"Applies changes to vimrc so they are usable immediately
nnoremap <leader>sv :source $MYVIMRC<cr>

"------------------------------------------------------------------------------"
"--------------------------------- Plugins ------------------------------------"
"------------------------------------------------------------------------------"
"NerdTree
nnoremap <leader>n :NERDTree<cr>
"Snipmate
filetype plugin on

"------------------------------------------------------------------------------"
"--------------------------------- HTML/CSS/JS --------------------------------"
"------------------------------------------------------------------------------"
"Autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"------------------------------------------------------------------------------"
"--------------------------------- Php ----------------------------------------"
"------------------------------------------------------------------------------"
"Autocompletion
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"Comment current line
nnoremap <leader>/ <esc>ma0i//<esc>`a
"Uncomment current line
nnoremap <leader>: <esc>ma0xx`a

"------------------------------------------------------------------------------"
"--------------------------------- Drupal -------------------------------------"
"------------------------------------------------------------------------------"
