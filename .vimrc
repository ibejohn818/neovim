source ~/.vim/plugins/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/.vim/plugins/{}', '~/.vim/langs/{}')

:nnoremap Ω :buffers<CR>:buffer<Space>

set t_Co=256

set nowrap

let NERDTreeHijackNetrw = 0

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Highlight Syntax
syntax on
filetype plugin indent on
syntax sync minlines=256
" enable all Python syntax highlighting features
let python_highlight_all = 1

"let g:python_host_prog = '/opt/local/Library/Frameworks/Python.framework/Versions/2.7/Resources/Python.app/Contents/MacOS/Python'

" Color Scheme
"colorscheme molokai
set background=dark
"colorscheme gruvbox
"colorscheme Tomorrow-Night
"colorscheme onedark
"colorscheme onehalfdark
colorscheme tender_jch
"i



hi Normal ctermbg=none
"cursor

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
" eanble mouse
set mouse=a

set number " Show Line Numbers

set ruler  " Show line and column number

"Search Options
set hidden
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

set hlsearch!

nnoremap <F3> :set hlsearch!<CR>
set clipboard=unnamed

:nnoremap <C-f> :Ack<Space>

set history=1000 " change history to 1000

" Tab control
set expandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" Tab control for yaml files
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2
autocmd FileType vuejs setlocal shiftwidth=2 tabstop=2
autocmd FileType vue setlocal shiftwidth=2 tabstop=2
autocmd FileType ts setlocal shiftwidth=2 tabstop=2
" Tab control for docker-comppose
autocmd FileType docker-compose setlocal expandtab

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1


" toggle invisible characters
set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
"highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪
set list
nmap <leader>ll :set list!<cr>
""
"" WILD settings
""

" TODO: Investigate the precise meaning of these settings
" set wildmode=list:longest,list:full

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.pyc

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Ignore node modules
set wildignore+=*/node_modules/*


""
"" Backup and swap files
""

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.




filetype plugin indent on " Turn on filetype plugins (:help filetype-plugin)

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>


" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=


" Toggle NERDTree Split
map <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>


" insert line shortcut
nmap <CR> o<Esc>k


" Toggle Tagbar Split
map <leader>rt :TagbarToggle<CR>

" Delete buffer while keeping window layout (don't close buffer's windows).
" Version 2008-11-18 from http://vim.wikia.com/wiki/VimTip165
if v:version < 700 || exists('loaded_bclose') || &cp
  finish
endif
let loaded_bclose = 1
if !exists('bclose_multiple')
  let bclose_multiple = 1
endif

" Display an error message.
function! s:Warn(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl NONE
endfunction

" Command ':Bclose' executes ':bd' to delete buffer in current window.
" The window will show the alternate buffer (Ctrl-^) if it exists,
" or the previous buffer (:bp), or a blank buffer if no previous.
" Command ':Bclose!' is the same, but executes ':bd!' (discard changes).
" An optional argument can specify which buffer to close (name or number).
function! s:Bclose(bang, buffer)
  if empty(a:buffer)
    let btarget = bufnr('%')
  elseif a:buffer =~ '^\d\+$'
    let btarget = bufnr(str2nr(a:buffer))
  else
    let btarget = bufnr(a:buffer)
  endif
  if btarget < 0
    call s:Warn('No matching buffer for '.a:buffer)
    return
  endif
  if empty(a:bang) && getbufvar(btarget, '&modified')
    call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
    return
  endif
  " Numbers of windows that view target buffer which we will delete.
  let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
  if !g:bclose_multiple && len(wnums) > 1
    call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
    return
  endif
  let wcurrent = winnr()
  for w in wnums
    execute w.'wincmd w'
    let prevbuf = bufnr('#')
    if prevbuf > 0 && buflisted(prevbuf) && prevbuf != w
      buffer #
    else
      bprevious
    endif
    if btarget == bufnr('%')
      " Numbers of listed buffers which are not the target to be deleted.
      let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
      " Listed, not target, and not displayed.
      let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
      " Take the first buffer, if any (could be more intelligent).
      let bjump = (bhidden + blisted + [-1])[0]
      if bjump > 0
        execute 'buffer '.bjump
      else
        execute 'enew'.a:bang
      endif
    endif
  endfor
  execute 'bdelete'.a:bang.' '.btarget
  execute wcurrent.'wincmd w'
endfunction
command! -bang -complete=buffer -nargs=? Bclose call s:Bclose('<bang>', '<args>')
" Map :Bclose function
nnoremap <silent> <Leader>bd :Bclose<CR>


"" NERD Tree Upon VIM OPEN Functions
  augroup AuNERDTreeCmd
  autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
  autocmd AuNERDTreeCmd FocusGained * call s:UpdateNERDTree()

  " If the parameter is a directory, cd into it
  function s:CdIfDirectory(directory)
    let explicitDirectory = isdirectory(a:directory)
    let directory = explicitDirectory || empty(a:directory)

    if explicitDirectory
      exe "cd " . fnameescape(a:directory)
    endif

    " Allows reading from stdin
    " ex: git diff | mvim -R -
    if strlen(a:directory) == 0
      return
    endif

    if directory
      NERDTree
      wincmd p
      bd
    endif

    if explicitDirectory
      wincmd l
    endif
  endfunction

  " NERDTree utility function
  function s:UpdateNERDTree(...)
    let stay = 0

    if(exists("a:1"))
      let stay = a:1
    end

    if exists("t:NERDTreeBufName")
      let nr = bufwinnr(t:NERDTreeBufName)
      if nr != -1
        exe nr . "wincmd w"
        exe substitute(mapcheck("R"), "<CR>", "", "")
        if !stay
          wincmd p
        end
      endif
    endif
  endfunction

autocmd! AuNERDTreeCmd FocusGained


"#############################
" Plugin Specific Settings
" TODO: Make these conditional
"#############################
"
" Syntastic
  "let g:syntastic_enable_signs=1
  "let g:syntastic_quiet_messages={
			  "\ "level":"errors"
			  "\}
  "let g:syntastic_auto_loc_list=2

"CTRLP Options
let g:ctrlp_working_path_mode=0
let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_max_files = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll)$',
\ }

" Tagbar settings
let g:tagbar_autofocus=1


" Call Function When Saving *.less files
autocmd FileWritePost,BufWritePost *.less :call HandleLessToCSS()
" Function to handle less compile
function! HandleLessToCSS()
	let cwd = expand('<afile>:p:h')
	let name = expand('<afile>:t:r')
	if(executable('less'))
		cal system('compile-less '.cwd.'/'.name.'.less &')
	endif
endfunction

function! AutoPEP8()
	let cwd = expand('<afile>:p:h')
	let name = expand('<afile>:t:r')
    if(executable('autopep8'))
        cal system('autopep8 --in-place --aggressive --aggressive '.cwd.'/'.name.'.py &')
        :edit!
    endif
endfunction

"map <F8> :call AutoPEP8()<CR>

" vim-pyflakes
let g:flake8_show_in_file=1
let g:flake8_show_in_gutter=1

"autocmd BufWritePost *.py call Flake8()
" emmet trigger
let g:user_emmet_leader_key='<C-E>'
"let g:user_emmet_expandabbr_key='<C-e>'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
