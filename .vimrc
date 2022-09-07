

" Pathogen load
filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on
"call pathogen#infect()
"call pathogen#helptags()

"filetype plugin indent on
"syntax on

if has("gui_macvim")
    set guifont=Courier:h18
else
    set guifont=FreeMono\ 14
endif

"Plugin 'tmhedberg/SimpylFold'
let g:pymode = 0
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set foldmethod=indent |
    \ set fileformat=unix

"Plugin 'vim-scripts/indentpython.vim'
nmap <F1> :OpenSession<CR>
nmap <F2> :BufExplorer<CR>
nmap <F3> :BookmarkShowAll<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
"autocmd vimenter * ++nested colorscheme gruvbox
"set bg=dark
set background=dark
"set background=light " for the light versio
colorscheme one
"colorscheme molokai
"set background=dark " for the dark version
" colorscheme onedark
"colorscheme eldar
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
set foldenable
filetype plugin on
set shiftwidth=4
let g:fastfold_savehook = 1
let g:fastfold_fdmhook = 0
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:tex_fold_enabled=1
let g:vimsyn_folding='af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:ruby_fold = 1
let g:sh_fold_enabled= 7
let g:php_folding = 1
let g:perl_fold = 1
let g:python_fold = 1
let g:python_syntax_folding = 1
noremap <s-k> 10k
noremap <s-j> 10j
noremap <D-k> 20k
noremap <D-j> 20j
let g:session_autosave='yes'
let g:session_autoload = 'yes'
"set t_Co=256
"set cul " highlight current line
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel ctermbg=white ctermfg=black
"hi CursorLine term=none cterm=none ctermbg=0 " adjust color
set clipboard=unnamed
set autochdir
let g:bookmark_auto_close = 1
"py3 import py_vim_md_beamer
"function! Pyfunc()
"    py3 py_vim_md_beamer.myfunc()
"endfunction
"
"function BuildPres()
"    write
"    echo "building presentation"
"    py3 py_vim_md_beamer.build_pres()
"    echo "done"
"endfunction
"
"function OpenPres()
"    write
"    py3 py_vim_md_beamer.open_pres_skim()
"endfunction
"
"function! InsertCols()
"    py3 py_vim_md_beamer.insert_cols()
"endfunction
"
"
"func! MenuCB(id, result)
"  echo "You chose item #".a:result
"endfunc
"
"nnoremap ]b :call BuildPres()<CR>
"nnoremap ]o :call OpenPres()<CR>
