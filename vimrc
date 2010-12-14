
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
set autoindent
set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab
set sts=2
set showmatch
set ruler
set laststatus=2
set statusline=%<%F%h%m%r%h%w%y\ [%{&ff}]\ [%{&encoding}]\ [git:\ %{GitBranch()}]\ [%{strftime(\"%d/%m/%y\ -\ %H:%M\",getftime(expand(\"%:p\")))}]%=\ [lin:%l\,%L]\ [col:%c%V]\ [pos:%o]\ [ascii:%b]\ %P
set pastetoggle=<F11>

set hidden
let mapleader = ","
let g:mapleader = ","
set history=1000
set wildmenu
set wildmode=list:longest
set ignorecase 
set smartcase
set scrolloff=3
set incsearch
set shortmess=atI

nmap <silent> <leader>n :silent :nohlsearch<CR>
map <leader>e :e! ~/.vimrc<cr>
"Quickly open a buffer for scripbble
map <leader>q :e ~/.vim/tmp/buffer<cr>
map <leader>h <C-]>
nnoremap <silent> <leader>p :YRShow<CR>

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails_proactive = 1

" -- begin template config --
let g:vt_template_dir_path = expand("$HOME/.vim/template") 
let g:vt_command = "" 
let g:vt_author = "Thomas Nitsche" 
let g:vt_email = "thomas.nitsche@gmail.com" 

let s:files_tmp = { 
   \'skel.html'     : "html", 
   \'skel.ruby'     : "rb",
   \'skel.sh'       : "sh" 
\} 
let g:vt_filetype_files = join(map(keys(s:files_tmp), 'v:val . "=" . s:files_tmp[v:val]'), ',') 
unlet s:files_tmp 
" -- end template config --

imap <F12> <%= %>

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

let g:yankring_history_file = '.vim/tmp/yankring_history.txt'
let g:dbext_default_history_file = '.vim/tmp/dbext_sql_history.txt'
