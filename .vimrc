"load plugin
set nocompatible
filetype off

if has('vim_starting')
  set rtp+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Align'
NeoBundle 'DrawIt'
NeoBundle 'YankRing.vim'
NeoBundle 'ZoomWin'
NeoBundle 'errormarker.vim'
NeoBundle 'gregsexton/VimCalc'
" NeoBundle 'number-marks'
" NeoBundle 'showmarks'
NeoBundle 'smartchr'
NeoBundle 'tagexplorer.vim'
NeoBundle 'Markdown'
NeoBundle 'taglist.vim'
NeoBundle 'Solarized'
NeoBundle 'verilog.vim'
NeoBundle 'verilog_systemverilog.vim'
" NeoBundle 'Rainbow-Parentheses-Improved'
NeoBundle 'luochen1990/rainbow'


NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neocomplcache' 
" NeoBundle 'Shougo/neocomplete' 
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-session'
NeoBundle 'hakobe/unite-script'
" NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-submode'
NeoBundle 'mattn/calendar-vim'
NeoBundle 'mattn/sonictemplate-vim'
NeoBundle 'taku-o/vim-reorder-columns'
NeoBundle 'taku-o/vim-toggle'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ujihisa/unite-font'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'ujihisa/quicklearn'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'sjl/gundo.vim'

" NeoBundle 'alpaca-tc/alpaca_powertabline'
" NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
" NeoBundle 'Lokaltog/powerline-fontpatcher'
NeoBundle 'itchyny/lightline.vim'

NeoBundle 'wesleyche/SrcExpl'
NeoBundle 'wesleyche/Trinity'
NeoBundle 't9md/vim-quickhl'
NeoBundle 't9md/vim-textmanip'
NeoBundle 'fuenor/JpFormat.vim'
" NeoBundle 'fuenor/qfixhowm'

NeoBundle 'tacroe/unite-mark'

"haskell
NeoBundle 'kana/vim-filetype-haskell'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'ujihisa/ref-hoogle'

NeoBundle 'gtags.vim'
" NeoBundle '5t111111/alt-gtags.vim'
NeoBundle "hewes/unite-gtags"

filetype plugin indent on
NeoBundleCheck

"set tags=tags
"nnoremap ,bi :BundleInstall<CR>

nnoremap ,<space> :e ~/.vimrc<CR> 
nnoremap ,<space> :e ~/.vimrc<CR> 
nnoremap ,s :source ~/.vimrc<CR>

nnoremap : ;
nnoremap ; :

vnoremap ; :
vnoremap : ;
"タブ、空白、改行の可視化

" set list
" set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=15 gui=reverse guibg=#FFFFFF
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

" コマンドラインで大文字小文字を無視
set wildignorecase
set wildmode=list:full

" 警告音の消音
set vb t_vb=

" backspaceの使用
set backspace=indent,eol,start

"スクロールバー,ツールバーを表示しない
set guioptions-=R
set guioptions-=L
set guioptions-=T

"メッセージ等表示
nnoremap <Space>m :messages<CR>
nnoremap <Space>c :changes<CR>
nnoremap <Space>ln :nmap<CR>
nnoremap <Space>lv :vmap<CR>
nnoremap <Space>d :DiffOrig<CR>
" reopen
nnoremap E :e!<CR>

"help
nnoremap <C-u> :help<Space>

" tags
" nnoremap tw <C-]>
" nnoremap tt <C-w>]
nnoremap tw :tjump <C-R><C-W><CR>
nnoremap tt :stjump <C-R><C-W><CR>
nnoremap tn :tag<CR>
nnoremap tp :pop<CR>
nnoremap tl :tags<CR>
" nnoremap ts :tjump <C-R><C-W><CR>
set tags+=tags;/Users/tm

"表示行単位で移動
nnoremap j gj
nnoremap k gk

"スペースでスクロール
nnoremap <Space> <C-D>
nnoremap <S-Space> <C-U>

"最終行へ
map g<Space> Gzz

"画面移動、サイズ変更
nnoremap <F3> <C-W><C-W>
nnoremap <F2> <C-W><C-P>
nnoremap _ <C-W>
nnoremap <D-_> <C-W>-
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" nmap sj <C-W>j<C-w>_
" nmap sk <C-W>k<C-w>_
" nmap sh <C-w>h<C-w>_
" nmap sl <C-w>l<C-w>_
" nnoremap ,, <C-W>>
" nnoremap .. <C-W><
" nnoremap , <NOP>
" nnoremap . <NOP>
nnoremap ,o :only<CR>
                    
set nocompatible    
set ignorecase      
set number        
set ruler  

set tabstop=2
set softtabstop=2   
set shiftwidth=2    
set noexpandtab     
set textwidth=0     
set smartindent     
set cmdheight=1
                    
set wrap            
set wrapscan        
set incsearch       
set showmatch 
                    
set autoindent      
set smartcase       
                    
set wildmenu
set showcmd

syntax on
set hlsearch

set hidden

"行末へ移動してインサートモードへ
nnoremap g_ g_a
"行頭移動してインサートモードへ
nnoremap g0 g0i
"次、前の行経移動してインサートモードへ
nnoremap + +$a
nnoremap - -$a

"直前の編集箇所へ移動
nnoremap gn g;zz
nnoremap gm g,zz
nnoremap gb '.zz

"Zoomwin
nnoremap zw :ZoomWin<CR>

"矩形移動で文字のないところも選択
set virtualedit=block
"連続的にインデントを変更
vnoremap < <gv
vnoremap > >gv

"自動保存
set autowrite
nnoremap w :write<CR>

"終了
nnoremap qq :quit<CR>

" コマンド履歴表示
set cmdwinheight=15
nnoremap q; q:
autocmd CmdwinEnter * nnoremap <silent> <buffer> <C-C> <C-C><C-E>
autocmd CmdwinEnter * nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
autocmd CmdwinEnter * inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

"visual-modeで選択したところを検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>
"ペーストした直後のテキストを選択
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`['

"<CR><CR>ハイライト解除
nnoremap <ESC><ESC> :nohlsearch<CR>

"コメントアウト
nnoremap ,c :TComment<CR>
vnoremap ,c :TCommentMaybeInline<CR>
vnoremap ,x :TCommentBlock<CR>

"編集中のファイルの名前を変更するコマンド
command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))

"toggle.vim
nmap <C-C> <Plug>ToggleN
imap <C-C> <Plug>ToggleI
vmap <C-C> <Plug>ToggleV

"listの文字
set lcs=tab:>.,eol:$,trail:_,extends:\

"tab移動
nnoremap <C-t>n :tabnew<CR>
nnoremap sn :tabnext<CR><C-t>
nnoremap sp :tabprevious<CR><C-t>

"buffer移動
nnoremap bn :bNext<CR>
nnoremap bp :bprevious<CR>
"nnoremap ,b :Buffer<Space>

"コマンドラインモードでの移動
cnoremap <C-L> <Del>
cnoremap <C-A> <HOME>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>

"メタキーを作動
if exists('+macmeta')
	set macmeta
endif

"開いている場所にカレントディレクトリを移動
au BufEnter * execute ":lcd " . expand("%:p:h")

"yankしたものをクリップボードに追加
set clipboard=unnamedplus,unnamed

" 前回閉じる前にいた場所へ自動移動
augroup vimrcEx
	autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line('$') |
    \   exe "normal! g`\"" |
    \ endif
augroup END


""""""""""""""""""""""""""""""""""""""""""""""" 表示
"ステータスラインの表示
 set statusline=%<%F\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).(&bomb?':BOM':'').']['.&ff.']'}%=\ %v,%l\ %L\%8P\ 
" set statusline = \t%{ShowTab()}\ %P
" fu ShowTab()
"   return (indent('.') / &ts )
" endf

" Molokai
let g:molokai_original = 1
let g:rehash256 = 1
" set background=dark

""powerline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'
set t_Co=256

" カーソルの表示をモードで変える
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

if has('multi_byte_ime') || has('xim')
	highlight CursorIM guibg=Purple guifg=NONE
endif

" カラースキームの一部を変更する
" autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#008800
autocmd ColorScheme * highlight LineNr ctermfg=241 guifg=#aaaaaa
" autocmd ColorScheme * highlight uniteSource__jump ctermfg=2 guifg=#228822
colorscheme default


""""""""""""""""""""""""""""""""""""エンコーディング
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
			set fileencodings+=cp932
			set fileencodings-=euc-jp
			set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif
" 日本語を含まない場合は fileencoding に encoding を使うようにする
if has('autocmd')
 function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif

""""""""""""""""""""""""""""""""""""プラグイン
" "neocomplcache用
" "
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplcache.
" let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" " Use camel case completion.
" let g:neocomplcache_enable_camel_case_completion = 1
" " Use underbar completion.
" let g:neocomplcache_enable_underbar_completion = 1
" " Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
" " Define dictionary.
" " let g:neocomplcache_dictionary_filetype_lists = {
" "     \ 'default' : '',
" "     \ 'vimshell' : $HOME.'/.vimshell_hist',
" "     \ 'scheme' : $HOME.'/.gosh_completions'
" "         \ }
"
" " Define keyword.
" if !exists('g:neocomplcache_keyword_patterns')
"     let g:neocomplcache_keyword_patterns = {}
" endif
" let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"
" " Plugin key-mappings.
" imap <C-k>     <Plug>(neocomplcache_snippets_expand)
" smap <C-k>     <Plug>(neocomplcache_snippets_expand)
" inoremap <expr><C-g>     neocomplcache#undo_completion()
" inoremap <expr><C-l>     neocomplcache#complete_common_string()
"
" " SuperTab like snippets behavior.
" "imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()
"
" " For cursor moving in insert mode(Not recommended)
" inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
" inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
" inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
" inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
"
" " AutoComplPop like behavior.
" "let g:neocomplcache_enable_auto_select = 1
"
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplcache_enable_auto_select = 1
" "let g:neocomplcache_disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
" "inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" " Enable heavy omni completion.
" if !exists('g:neocomplcache_omni_patterns')
"   let g:neocomplcache_omni_patterns = {}
" endif
" let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
" "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
" let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

if neobundle#is_installed('neocomplete')
    " neocomplete用設定
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_ignore_case = 1
    let g:neocomplete#enable_smart_case = 1
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns._ = '\h\w*'
elseif neobundle#is_installed('neocomplcache')
    " neocomplcache用設定
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_ignore_case = 1
    let g:neocomplcache_enable_smart_case = 1
    if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
    endif
    let g:neocomplcache_keyword_patterns._ = '\h\w*'
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_underbar_completion = 1
endif
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"


"スニペット補完
"" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" imap <C-k> <Plug>(neocomplcache_snippets_expand)
" smap <C-k> <Plug>(neocomplcache_snippets_expand)

"unite.vim
" 入力モードで開始
"let g:unite_enable_start_insert=1
nnoremap su :<C-u>Unite file_mru file buffer<CR>
nnoremap sf :<C-u>Unite -buffer-name=files file_rec<CR>
nnoremap sc :<C-u>UniteWithCurrentDir file<CR>
nnoremap sm :<C-u>Unite change -winheight=15 -no-quit -keep-focus<CR>
nnoremap sv :<C-u>Unite bookmark<CR>
nnoremap sb :<C-u>Unite buffer<CR>
nnoremap so :<C-u>Unite outline -winheight=15 -no-quit<CR>
nnoremap sl :<C-u>Unite line -winheight=15 -no-quit -input=
nnoremap sL :<C-u>Unite line -winheight=15 -no-quit -input=<C-R><C-W><CR>
nnoremap sj :<C-u>Unite -winheight=15 -no-quit jump<CR>
nnoremap sd :<C-u>UniteClose default<CR>
nnoremap sr :<C-u>UniteResume<CR>
nnoremap st :<C-u>Unite tag -start-insert<CR>
nnoremap sG :<C-u>Unite gtags/ref -no-quit<CR>
" nnoremap sp :<C-u>call <SID>unite_project('-start-insert')<CR>
nnoremap sp :<C-u>UniteWithProjectDir file_rec<CR>
nnoremap mm :<C-u>Unite mark<CR>
nnoremap md :<C-u>delmarks!<CR>

let g:unite_source_history_yank_enable = 1
nnoremap sh :<C-u>Unite history/yank<CR>


" grep の代わりにagを使う
let g:unite_source_grep_max_candidates = 6000
if executable('ag')
  " Use ag in unite grep source.
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
  \ '-i --line-numbers --nocolor --nogroup --hidden --ignore ' .
  \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
endif

nnoremap sg :<C-u>call <SID>unite_project_grep()<CR>
function! s:unite_project_grep(...)
  let opts = (a:0 ? join(a:000, ' ') : '')
  let dir  = unite#util#path2project_directory(expand('%'))
  execute 'Unite' opts 'grep:' . dir
endfunction

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> S unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> S unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> V unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> V unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" unite-gtags
let g:unite_source_gtags_project_config = {
			\ '_' : { 'treelize':1, 'absolute_path':1}
			\	}

"vimfiler
nnoremap ,vf :VimFiler<CR>
let g:vimfiler_as_default_explorer=1
let g:vimfiler_safe_mode_by_default=0
nnoremap ]v :VimFilerBufferDir -split -simple -winwidth=30 -no-quit<CR>

"http://hrsh7th.hatenablog.com/entry/20120229/1330525683
autocmd! FileType vimfiler call g:my_vimfiler_settings()
function! g:my_vimfiler_settings()
	nmap     <buffer><expr><Cr> vimfiler#smart_cursor_map("\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
	nnoremap <buffer>s          :call vimfiler#mappings#do_action('my_split')<Cr>
	nnoremap <buffer>v          :call vimfiler#mappings#do_action('my_vsplit')<Cr>
endfunction

let s:my_action = { 'is_selectable' : 1 }
function! s:my_action.func(candidates)
	wincmd p
	  exec 'split '. a:candidates[0].action__path
endfunction
call unite#custom_action('file', 'my_split', s:my_action)

let s:my_action = { 'is_selectable' : 1 }                     
function! s:my_action.func(candidates)
  wincmd p
  exec 'vsplit '. a:candidates[0].action__path
endfunction
call unite#custom_action('file', 'my_vsplit', s:my_action)

" ESCキーを2回押すと終了する
au FileType vimfiler nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType vimfiler inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

au FileType vimfiler nnoremap <silent> <buffer> <C-l> <C-w>l

"Align
let g:Align_xstrlen=3
let g:DrChipTopLvlMenu = ''
" vnoremap A :Align 

"vim-refでalcはlynxを使う
let g:ref_alc_cmd='lynx -dump -nonumbers -display_charset=utf-8 %s'
let g:ref_source_webdict_sites = {
\ 'wiktionary': {
\ 'url': 'http://ja.wiktionary.org/wiki/%s',
\ 'keyword_encoding': 'utf-8',
\ 'cache': 1,
\ },
\ 'wikipedia:ja':{
\ 'url': 'http://ja.wikipedia.org/wiki/%s',
\ 'keyword_encoding': 'utf-8',
\ 'cache': 1,
\ },
\ 'alc':{
\ 'url': 'http://eow.alc.co.jp/search?q=%s',
\ 'keyword_encoding': 'utf-8',
\ 'cache': 1,
\ },
\ }
" 出力に対するフィルタ。最初の数行を削除している。
function! g:ref_source_webdict_sites.wiktionary.filter(output)
 return join(split(a:output, "\n")[18 :], "\n")
endfunction
function! g:ref_source_webdict_sites.alc.filter(output)
 return join(split(a:output, "\n")[34 :], "\n")
endfunction
let g:ref_source_webdict_sites.default = 'wikipedia:ja'
nnoremap ,a :Ref webdict alc 

" "vimshell
" "ディレクトリ名を表示
" let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
" "let g:vimshell_right_prompt = 'vcs#info("(%s)-[%b]", "(%s)-[%b|%a]")'
" let g:vimshell_enable_smart_case = 1
"
" if has('win32') || has('win64')
"   " Display user name on Windows.
"   let g:vimshell_prompt = $USERNAME."% "
" else
"   " Display user name on Linux.
"   let g:vimshell_prompt = $USER."% "
"
"   call vimshell#set_execute_file('bmp,jpg,png,gif', 'gexe eog')
"   call vimshell#set_execute_file('mp3,m4a,ogg', 'gexe amarok')
"   let g:vimshell_execute_file_list['zip'] = 'zipinfo'
" 	call vimshell#set_execute_file('tgz,gz', 'gzcat')
"   call vimshell#set_execute_file('tbz,bz2', 'bzcat')
" endif
"
" "Initialize execute file list.
" let g:vimshell_execute_file_list = {}
" call vimshell#set_execute_file('txt,vim,c,h,cpp,d,xml,java', 'vim')
" let g:vimshell_execute_file_list['rb'] = 'ruby'
" let g:vimshell_execute_file_list['pl'] = 'perl'
" let g:vimshell_execute_file_list['py'] = 'python'
" call vimshell#set_execute_file('html,xhtml', 'gexe firefox')
"
" autocmd FileType vimshell
" \ call vimshell#altercmd#define('g', 'git')
" \| call vimshell#altercmd#define('i', 'iexe')
" \| call vimshell#altercmd#define('l', 'll')
" \| call vimshell#altercmd#define('ll', 'ls -l')
" \| call vimshell#hook#add('chpwd', 'my_chpwd', 'g:my_chpwd')
"
" function! g:my_chpwd(args, context)
"   call vimshell#execute('ls')
" endfunction
"
" autocmd FileType int-* call s:interactive_settings()
" function! s:interactive_settings()
" endfunction


"YankRing.vim
let g:yankring_history_dir = expand('$HOME')
let g:yankring_history_file = '.yankring_history'
let g:yankring_window_height=10
nnoremap <silent> :y :YRShow<CR>


""smartch
" cnoremap <expr> \  smartchr#one_of('~/', '\', {'ctype': ':'})
" "cnoremap <expr> / smartchr#loop('/', '/', '//', {'ctype': ':'})                                      
"
" command! Smartchon call s:smartch_settings()
" function! s:smartch_settings()
" 	inoremap <buffer><expr> = search('\(&\<bar><bar>\<bar>+\<bar>-\<bar>/\<bar>>\<bar><\) \%#', 'bcn')? '<bs>= '
" 				\ : search('\(*\<bar>!\)\%#', 'bcn') ? '= '
" 				\ : smartchr#one_of(' = ', ' == ', '=')
" 	inoremap <buffer><expr> < search('^#include\%#', 'bcn')? ' <'
" 				\	:	search('vector\<bar>list\<bar>map\<bar>set\<bar>cast\%#', 'bcn', line(".")) ? '<' 
" 				\ : smartchr#one_of(' < ', ' << ', ' <<= ', '<')
" 	inoremap <buffer><expr> > search('^#include <.*\%#', 'bcn')? '>'
" 				\	:	search('vector\<bar>list\<bar>map\<bar>set', 'bcn', line(".")) ? smartchr#one_of('> ','> > ', '>') 
" 				\ : search('< \%#', 'bcn') ? '<bs>> '
" 				\ : search('<\(\w\+\)\%#', 'bcn') ? '>'
" 				\ : smartchr#one_of(' > ', ' >> ', ' >>= ', '>')
"
" 	inoremap <buffer><expr> * search('/ \%#', 'bcn')? '<bs>* ' : '*'
"
" 	inoremap <buffer><expr> + smartchr#one_of(' + ', '++', '+') 
" 	inoremap <buffer><expr> - smartchr#one_of(' - ', '--', '-')  
" 	inoremap <buffer><expr> / search('*\%#', 'bcn')? '/' : smartchr#one_of(' / ', '// ', '/')
" 	inoremap <buffer><expr> ! smartchr#one_of('!',' != ', ' !== ', '!') 
" 	inoremap <buffer><expr> & smartchr#one_of(' & ', ' && ', '&')
" 	inoremap <buffer><expr> % smartchr#one_of(' % ', '%')
" 	inoremap <buffer><expr> <Bar> smartchr#one_of(' <Bar> ', ' <Bar><Bar> ', '<Bar>')                     
"
" 	inoremap <buffer><expr> ? smartchr#one_of('? ', '?')
" 	inoremap <buffer><expr> : search('> \%#', 'bcn')? '<bs>::'
" 				\ : smartchr#one_of(': ', '::', ':')
"
" 	"２回入力したら改行                                                                                   
" 	inoremap <buffer><expr> } smartchr#one_of('}<cr>', '}')
" 	inoremap <buffer><expr> { smartchr#one_of('{<cr>', '{')
" 	inoremap <buffer><expr> ; search('for', 'bcn', line("."))? ';'
" 					\ : search('\S', 'bcn', line(".")) ? ';<CR>'
" 					\ : '<CR>'
" 	inoremap <buffer> <D-_> ;
"
" 	inoremap <buffer><expr> , smartchr#one_of(', ', ',')                                                          
" 	inoremap <buffer><expr> . smartchr#one_of('.', '->', '..') 
" endfunction
"
" command! Smartchoff call s:smartch_settings_off()
" function! s:smartch_settings_off()
" 	inoremap <buffer> = =
" 	inoremap <buffer> <	<
" 	inoremap <buffer> > >
"
" 	inoremap <buffer> + +
" 	inoremap <buffer> - -
" 	inoremap <buffer> / /
" 	inoremap <buffer> ! !
" 	inoremap <buffer> & &
" 	inoremap <buffer> % %
"
" 	inoremap <buffer> ? ?
" 	inoremap <buffer> : :
" 	cnoremap <buffer> \ \
"
" 	inoremap <buffer> } }
" 	inoremap <buffer> { {
" 	inoremap <buffer> ; ;
"
" 	inoremap <buffer> , ,
" 	inoremap <buffer> . .
" endfunction

" errormarker
let g:errormarker_errortext = '!!'
let g:errormarker_warningtext = '??'
let g:errormarker_errorgroup = 'Error'
let g:errormarker_warninggroup = 'Warning'
autocmd Filetype py compiler <buffer> python
autocmd Filetype rb compiler <buffer> ruby
autocmd Filetype pl compiler <buffer> perl

if !exists('g:flymake_enabled')
	let g:flymake_enabled = 1
	autocmd BufWritePost *.rb,*.pl,*.pm silent make
endif

" syntastic
let g:syntastic_mode_map = {
      \  'mode': 'passive',
      \ 'active_filetypes': [],
      \ 'passive_filetypes': []
      \ }
nnoremap ]a :lnext!<CR>
nnoremap ]q :lprev!<CR>
nnoremap ]e :Errors<CR><C-W><C-W>
nnoremap ]t :SyntasticToggleMode<CR>
nnoremap ]g :SyntasticCheck<CR>
"自動で初めのエラーにジャンプ
"let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
"
"
" "sonictemplate
 nnoremap te :Template<Space>
"
"pythonコマンド用
if has("python")
	python from vim import current as c
endif
"
" "python, rubyは;で改行
autocmd Filetype py,rb inoremap <buffer> ; <CR>
autocmd Filetype py,rb inoremap <buffer> <D-_> ;
"
""quickrun
"let g:quickrun_config = {}
let g:quickrun_config={'*': {'20vsplit': ''}}
"実行時間
let g:quickrun_config = {'*': {'hook/time/enable': '1'},}
" nnoremap ,r <Plug>(quickrun)
nnoremap ,r :QuickRun<CR> 
"tex
let g:tex_flavor='latex' 
let g:quickrun_config = { 'tex' : {'command' : 'platex', 'exec': ['%c %s', 'dvipdfmx %s:r.dvi', 'open %s:r.pdf']} }

"html
 " let g:quickrun_config = { 'html' : {'command' : '', 'exec': ['open %s']} }

"markdown
autocmd BufRead,BufNewFile *.mkd  setfiletype mkd
autocmd BufRead,BufNewFile *.md  setfiletype mkd
let g:quickrun_config['markdown'] = {
       \ 'outputter': 'browser'
       \ }

"scheme
" autocmd FileType scheme inoremap 7 '
" autocmd FileType scheme inoremap 8 (
" autocmd FileType scheme inoremap 9 )
" autocmd FileType scheme inoremap ) 9
" autocmd FileType scheme inoremap ( 8
" autocmd FileType scheme inoremap ' 7

" rainbow.vim
" autocmd Filetype scheme :RainbowParenthesesToggle
" let g:rbpt_max = 7
" let g:rbpt_loadcmd_toggle = 0
nnoremap ]r :RainbowToggle<CR>
let g:rainbow_active = 0 " 初期状態OFF
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['red', 'darkblue', 'darkmagenta', 'darkcyan'],
    \   'operators': '_,_',
    \   'parentheses': [['(',')'], ['\[','\]'], ['{','}']],
    \   'separately': {
    \       '*': {},
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \           'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta', 'darkcyan', 'darkred', 'darkgreen'],
    \       },
    \       'vim': {
    \           'parentheses': [['fu\w* \s*.*)','endfu\w*'], ['for','endfor'], ['while', 'endwhile'], ['if','_elseif\|else_','endif'], ['(',')'], ['\[','\]'], ['{','}']],
    \       },
    \       'tex': {
    \           'parentheses': [['(',')'], ['\[','\]'], ['\\begin{.*}','\\end{.*}']],
    \       },
    \       'css': 0,
    \       'stylus': 0,
    \   }
    \}
"(((((((()))))))){{{}}}

"javascript
let $JS_CMD='node'

""easymotion
" デフォルト設定をOFF
let g:EasyMotion_do_mapping = 0
" ホームポジションに近いキーを使う
let g:easyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
" 1 ストローク選択を優先する
let g:easyMotion_grouping=1
" カラー設定変更
hi easyMotionTarget ctermbg=none ctermfg=red
hi easyMotionShade  ctermbg=none ctermfg=blue

" key bind
nmap [s <Plug>(easymotion-s2)
xmap [s <Plug>(easymotion-s2)
omap [z <Plug>(easymotion-s2)

""submode
"サイズ変更
call submode#enter_with('move-window', 'n', '', '.w', '<Nop>')
call submode#leave_with('move-window', 'n', '', '<Esc>')
call submode#map('move-window', 'n', '', 'j', '<C-w>+')
call submode#map('move-window', 'n', '', 'k', '<C-w>-')
call submode#map('move-window', 'n', '', 'h', '<C-w>>')
call submode#map('move-window', 'n', '', 'l', '<C-w><')
"透過
call submode#enter_with('transparency', 'n', '', '.t', '<Nop>')
call submode#leave_with('transparency', 'n', '', '<Esc>')
call submode#map('transparency', 'n', '', 'k', ':let &transparency += 1<CR>')
call submode#map('transparency', 'n', '', 'j', ':let &transparency -= 1<CR>')
"移動
call submode#enter_with('s', 'n', '', '<Space>j', '<C-d>')
call submode#enter_with('s', 'n', '', '<Space>k', '<C-u>')
call submode#leave_with('s', 'n', '', '<Esc>')
call submode#map ('s', 'n', '', 'j', '<C-d>')
call submode#map ('s', 'n', '', 'k', '<C-u>')
call submode#map ('s', 'n', '', 'a', ':let &l:scroll -= 3<CR>')
call submode#map ('s', 'n', '', 's', ':let &l:scroll += 3<CR>')
"ヒストリー履歴
call submode#enter_with('undo/redo', 'n', '', 'g-', 'g-')
call submode#enter_with('undo/redo', 'n', '', 'g+', 'g+')
call submode#leave_with('undo/redo', 'n', '', '<Esc>')
call submode#map('undo/redo', 'n', '', '-', 'g-')
call submode#map('undo/redo', 'n', '', '+', 'g+') 
let g:submode_timeout = 1
let g:submode_timeoutlen = 10000

"textmanip
" call submode#enter_with('textmanip', 'v', '', '.v', '')
" call submode#leave_with('textmanip', 'v', '', '<Esc>')
" call submode#map('textmanip', 'v', '', 'h', '<Plug>(textmanip-move-left)')
" call submode#map('textmanip', 'v', '', 'j', '<Plug>(textmanip-move-down)')
" call submode#map('textmanip', 'v', '', 'k', '<Plug>(textmanip-move-up)')
" call submode#map('textmanip', 'v', '', 'l', '<Plug>(textmanip-move-right)')
" call submode#map('textmanip', 'v', '', 'd', '<Plug>(textmanip-duplicate-up)')
" call submode#map('textmanip', 'v', '', 'D', '<Plug>(textmanip-duplicate-down)')

""taglist
"let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
" let g:titlestring=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)

nnoremap ]n :NERDTreeToggle<CR>

let g:SrcExpl_UpdateTags = 1
nnoremap ]s :SrcExplToggle<CR>

""quickhl
nmap <Space>h <Plug>(quickhl-manual-this)
xmap <Space>h <Plug>(quickhl-manual-this)
nmap <Space>H <Plug>(quickhl-manual-reset)
xmap <Space>H <Plug>(quickhl-manual-reset)

" nmap <Space>j <Plug>(quickhl-cword-toggle)
" nmap <Space>] <Plug>(quickhl-tag-toggle)
" map H <Plug>(operator-quickhl-manual-this-motion)

""textmanip
" 選択したテキストの移動
" xmap <A-d> <Plug>(textmanip-duplicate-down)
" nmap <A-d> <Plug>(textmanip-duplicate-down)
" xmap <A-D> <Plug>(textmanip-duplicate-up)
" nmap <A-D> <Plug>(textmanip-duplicate-up)
"
" xmap <A-j> <Plug>(textmanip-move-down)
" xmap <A-k> <Plug>(textmanip-move-up)
" xmap <A-h> <Plug>(textmanip-move-left)
" xmap <A-l> <Plug>(textmanip-move-right)

" ""JpFormat
let JpCountChars = 40
let JpCountLines = 40
" 日本語の行の連結時には空白を入力しない。
set formatoptions+=mM

""Qfixhowm
" キーマップリーダー
" let QFixHowm_Key = 'g'

" howm_dirはファイルを保存したいディレクトリを設定
" let howm_dir             = '~/howm'
" let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.txt'
" let howm_fileencoding    = 'utf-8'
" let howm_fileformat      = 'unix'

""calender
nnoremap ]cc :Calendar<CR>
nnoremap ]ca :Calc<CR>


"" ハイライト確認
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
        \ "name": name,
        \ "ctermfg": ctermfg,
        \ "ctermbg": ctermbg,
        \ "guifg": guifg,
        \ "guibg": guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
        \ " ctermfg: " . baseSyn.ctermfg .
        \ " ctermbg: " . baseSyn.ctermbg .
        \ " guifg: " . baseSyn.guifg .
        \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
        \ " ctermfg: " . linkedSyn.ctermfg .
        \ " ctermbg: " . linkedSyn.ctermbg .
        \ " guifg: " . linkedSyn.guifg .
        \ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()
