" NerdTree configuration
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:autoformat_retab = 1
let g:formatter_yapf_style = 'pep8'
let g:formatters_python = ['autopep8']

"jsx
let g:jsx_ext_required = 0


" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='molokai'
set noshowmode

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exr = '$(npm bin)/eslint --fix'
let g:syntastic_python_checkers = ['pylint']



" Tagbar configuration
let g:tagbar_type_ruby = {
			\ 'kinds' : [
			\ 'm:modules',
			\ 'c:classes',
			\ 'd:describes',
			\ 'C:contexts',
			\ 'f:methods',
			\ 'F:singleton methods'
			\ ]
			\ }
let g:tagbar_type_css = {
			\ 'ctagstype' : 'Css',
			\ 'kinds'     : [
			\ 'c:classes',
			\ 's:selectors',
			\ 'i:identities'
			\ ]
			\ }

" gitgutter
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 0
let g:gitgutter_enabled = 1

" yankring
let g:yankring_history_dir = '~/.config/nvim/backup'

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" snippets
let g:UltiSnipsEditSplit="vertical"

" deoplete
autocmd VimEnter * :UpdateRemotePlugin
let g:deoplete#enable_at_startup = 1

" greplace
set grepprg=git\ grep
let g:grep_cmd_opts = '--line-number'

" switch
let g:switch_mapping = "-"

" omni completion settings
set omnifunc=syntaxcomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


set shell=/bin/bash
" ctrlP Configuration
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_max_height = 40
let g:ctrlp_switch_buffer = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard -cod | grep -viE "\.(png|gif|jpg|gz|woff|eot|tiff|ttf|otf)$"']
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*\\vendor\\**
