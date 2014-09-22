" jite color scheme

" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #B5DCFE
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF
" ********************************************************************************

set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "jite"

" General
hi String            guifg=#A8FF60     guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
hi Todo              guifg=#8f8f8f     guibg=NONE        gui=NONE      ctermfg=red         ctermbg=NONE        cterm=bold

" Special for HTML
hi htmlTag           guifg=white       guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi htmlTagName       guifg=white       guibg=NONE        gui=NONE      ctermfg=yellow      ctermbg=NONE        cterm=NONE
hi htmlEndTag        guifg=white       guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi htmlLink          guifg=white       guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE

" Special for PHP
hi link phpIdentifier identifier
hi phpDefine         guifg=white       guibg=NONE        gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE   "function
hi phpStatement      guifg=white       guibg=NONE        gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE   "return
hi phpStorageType    guifg=white       guibg=NONE        gui=NONE      ctermfg=red         ctermbg=NONE        cterm=NONE   "public, private, protected
hi phpType           guifg=white       guibg=NONE        gui=NONE      ctermfg=yellow      ctermbg=NONE        cterm=NONE   "array, null
hi phpNumber         guifg=white       guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
