"" common configure
set nu
set autowriteall
set fileencodings=ucs-bom,utf-8,cp936,gbk
set fileencoding=utf-8
set encoding=utf-8

"" emmet-vim configure
let g:user_emmet_mode = 'a'

"" tagbar configure
nmap <leader>tt :TagbarToggle<cr>
let g:tagbar_iconchars = ['▸', '▾']

"" NERDTree configure
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore=['\.o$', '\.tgz$', '\.a$']
let g:NERDTreeDirArrowExpandable = '▸' 
let g:NERDTreeDirArrowCollapsible = '▾'

"" syntastic configure
"let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_check_on_open = 1
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
"let g:syntastic_enable_balloons = 1
"let g:syntastic_auto_jump = 1

"" YouCompleteMe configure
let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/sources_non_forked/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '?'
nnoremap <leader>jd :YcmCompleter GoTo<cr>

"" gvim full screen
if (has("win16") || has("win32")) && has("gui_running")
    colorscheme molokai
    au GUIEnter * simalt~x
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set showtabline=0
endif

"" airline 
let g:airline_powerline_fonts = 1
