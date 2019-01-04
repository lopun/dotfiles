let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
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
call vundle#end()            " required
filetype plugin indent on    " required
" "
" "

set relativenumber

""" Ale Setting
set completeopt=menu,menuone,preview,noselect,noinsert

set expandtab
set shiftwidth=2
set softtabstop=2

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
let g:ale_lint_delay = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'always'
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

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
let g:tsuquyomi_completion_detail = 0
autocmd FileType typescript setlocal completeopt+=menu,preview
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:tsuquyomi_shortest_import_path = 1
 let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc

""" copy to clipboard with Ctrl+C
map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

nmap <leader>d <Plug>(ale_fix)
map <leader>p :Prettier<CR>
map <leader>a :Autopep8<CR>
