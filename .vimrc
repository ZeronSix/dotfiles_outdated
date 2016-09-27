set nocompatible              " be iMproved, required

so ~/dotfiles/plugins.vim

syntax enable
set number              " activate line numbers
set noerrorbells visualbell t_vb=
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set encoding=utf-8
set wildmenu
set clipboard=unnamedplus
set smartindent
set showmatch
set nowrap

"------------Search------------"
set hlsearch
set incsearch



"----------Split management----------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>



"----------Visuals-------------"
if has('gui_running')
    set background=light
    colorscheme solarized 
    set guifont=Roboto\ Mono\ For\ Powerline\ 11
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set guioptions-=e
    set guioptions-=m
    set guioptions-=T
endif

hi LineNr guibg=bg
hi foldcolumn guibg=bg
hi vertsplit guifg=bg guibg=bg


"-----------Mappings-----------"
nmap <Leader>ev :e $MYVIMRC<cr>
nmap <M-1> :NERDTreeToggle<cr>
nmap <M-R> :CtrlPBufTag<cr>
nmap <M-e> :CtrlPMRUFiles<cr>
nmap <Leader>f :tag<space>
nmap <M-2> :TagbarToggle<cr>
nmap <Leader>cd :cd %:p:h<cr>:pwd<CR>

" Search highlight removal
nmap <Leader><space> :nohlsearch<cr>     

"-----------Plugins----------------"

"/ Ctrl-P
let g:ctrlp_custom_ignore = 'DS_Store\git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/ NERDTree
let NERDTreeHijackNetrw = 0

"/ Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python3' 

"/ ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<a-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"/ YCM
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/dotfiles/scripts/.ycm_extra_conf.py'
nmap <leader>j :YcmCompleter GoTo<CR>
nmap <leader>i :YcmCompleter GoToInclude<CR>
nmap <leader>k :YcmCompleter GoToDefinition<CR>
nmap <leader>h :YcmCompleter GetDoc<CR>

"/ Rust.vim
let g:rustfmt_autosave = 1
let g:ycm_rust_src_path = '~/git/rust/src'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"-----------Auto-Commands----------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

