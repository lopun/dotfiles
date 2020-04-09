set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
Plugin 'johngrib/vim-game-code-break'
Plugin 'sheerun/vim-polyglot'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
Plugin 'Shougo/vimproc.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'nvie/vim-flake8'
Plugin 'mindriot101/vim-yapf'
Plugin 'tpope/vim-surround'
Plugin 'rust-lang/rust.vim'
Plugin 'ternjs/tern_for_vim', {'do': 'npm install && npm install -g tern'}
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'udalov/kotlin-vim'
call vundle#end()            " required
filetype plugin indent on    " required
" "
" "

set relativenumber
set mouse=a

""" Ale Setting
set completeopt=menu,menuone,preview,noselect,noinsert

set expandtab
set shiftwidth=2
set softtabstop=2

" Tern settings
" let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" NERDTree Setting
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.DS_Store']

" ALE Setting
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_echo_msg_info_str = 'Info'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_enabled = 1

let g:ale_cpp_gcc_executable = '/usr/bin/g++'
let g:ale_cpp_gcc_options="-Wall -O3"
let g:ale_c_gcc_executable = '/usr/bin/gcc'
let g:ale_c_gcc_options="-Wall -O2"
let g:ale_linters = {}
let b:ale_fixers = {'javascript': ['eslint'], 'python': ['autopep8', 'yapf']}
let b:ale_linters = {'javascript': ['eslint'], 'python': ['flake8', 'pylint'], 'c': ['gcc'],  'cpp': ['g++'] }
let g:ale_fixers = { 'javascript': ['eslint'], 'python': ['autopep8', 'yapf']}

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:ale_fix_on_save = 1
let g:ale_history_enabled = 1
let g:ale_history_log_output = 1
let g:ale_keep_list_window_open = 0
let g:ale_lint_delay = 100
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1

let g:ale_completion_enabled = 1
let g:ale_set_balloons = 1
let g:ale_set_highlights = 1
let g:ale_sign_error = '>>'
let g:ale_sign_info = '--'
let g:ale_sign_offset = 1000000
let g:ale_sign_style_error = '>>'
let g:ale_sign_style_warning = '--'
let g:ale_sign_warning = '--'
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
let g:tsuquyomi_completion_detail = 0
autocmd FileType typescript setlocal completeopt+=menu,preview
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:tsuquyomi_shortest_import_path = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc

let g:rustfmt_autosave = 1

""" copy to clipboard with Ctrl+C
map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

nmap <leader>d <Plug>(ale_fix)
map <leader>p :Prettier<CR>
map <leader>a :Autopep8<CR>

""" color schme - vscode theme
colorscheme codedark
let g:airline_theme = 'codedark'

""" syntastic configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
