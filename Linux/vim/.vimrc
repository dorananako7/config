" コードに色をつける（必須設定）
syntax on

" 左側に行番号を表示する
set number

" マウス操作を有効にする（クリックでカーソル移動、スクロール可能に）
set mouse=a

" タブ幅をスペース4つ分にする
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

" 検索時、大文字小文字を区別しない（ただし大文字が混ざってたら区別する）
"set ignorecase
"set smartcase

" OSC 52によるWindowsクリップボードへのコピー
let g:osc52_force_avail = v:true
let g:osc52_disable_paste = v:true

packadd osc52
set clipmethod=osc52

" 通常のy・pはVim内部のレジスタを使用
set clipboard=

" スワップファイルを作成しない
set noswapfile

" ========================================
" Vim基本設定
" ========================================

syntax on
filetype plugin indent on

" ========================================
" ALE設定
" ========================================

" 保存時の自動整形は最初は無効
let g:ale_fix_on_save = 0

" ALEで使用するフォーマッター
let g:ale_fixers = {
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'json': ['prettier'],
\   'yaml': ['prettier'],
\   'markdown': ['prettier'],
\   'tex': ['tex-fmt'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\}

" F6キーで整形
nnoremap <F6> :ALEFix<CR>

" 保存時の自動整形は無効
let g:ale_fix_on_save = 0

" 設定したリンターだけを使う
let g:ale_linters_explicit = 1

" F6キーでコード整形
nnoremap <F6> :ALEFix<CR>


