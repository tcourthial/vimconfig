"------------------------------------------------------------------------------"
"--------------------------------- Global -------------------------------------"
"------------------------------------------------------------------------------"
"Pathogen to manage plugins
call pathogen#infect()

"Indent
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
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

" My custom color scheme
colorscheme jite

"
"--------------------------------- Global remap -------------------------------"
"remap leader
let mapleader = ','
"paste mode toggle
nnoremap <leader>p :set paste!<cr>
"line numbers toggle
nnoremap <leader>l :set number!<cr>
"add quotes to current word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"Shortcut for tabnew
nnoremap <leader>tn :tabnew<cr>
"Set mouse
nnoremap <leader>m :set mouse=a<cr>
nnoremap <leader>mm :set mouse=<cr>
" Remove trailing spaces
nnoremap <leader>s :%s/\s\+$//<CR>

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
"
"--------------------------------- NerdTree -----------------------------------"
nnoremap <leader>n :NERDTreeToggle<cr>
"Snipmate
filetype plugin on

"--------------------------------- PHP GetSet ---------------------------------"
let b:phpgetset_getterTemplate = 
  \ "    \n" .
  \ "    /**\n" .
  \ "     * Get %varname%.\n" .
  \ "     *\n" .
  \ "     * @return %varname%.\n" .
  \ "     */\n" .
  \ "    public function %funcname%()\n" .
  \ "    {\n" .
  \ "        return $this->%varname%;\n" .
  \ "    }"

let b:phpgetset_setterTemplate = 
  \ "    \n" .
  \ "    /**\n" .
  \ "     * Set %varname%.\n" .
  \ "     *\n" .
  \ "     * @param %varname% the value to set.\n" . 
  \ "     */\n" .
  \ "    public function %funcname%($%varname%)\n" .
  \ "    {\n" .
  \ "        $this->%varname% = $%varname%;\n" .
  \ "        return $this;\n" .
  \ "    }"

"------------------------------------------------------------------------------"
"--------------------------------- Filetypes ----------------------------------"
"------------------------------------------------------------------------------"

"--------------------------------- XML ----- ----------------------------------"
" Indent xml
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

"--------------------------------- HTML/CSS/JS --------------------------------"
"Autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"--------------------------------- Php ----------------------------------------"
"Autocompletion
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"Comment current line
nnoremap <leader>/ <esc>ma0i//<esc>`a
"Uncomment current line
nnoremap <leader>: <esc>ma0xx`a

" Autoremove trailing spaces on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType php autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

"  Shortcuts
ia vd var_dump();
ia vdd var_dump();die;

let php_sql_query = 1 "Coloration des requetes SQL

"------------------------------------------------------------------------------"
"--------------------------------- Various ------------------------------------"
"------------------------------------------------------------------------------"
"
" Checks the syntax group the current word belongs to
function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
