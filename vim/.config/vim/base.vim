" 定義快捷鍵的前綴，即 <Leader>
let mapleader="'"
" 開啟文件類型偵測
filetype on
" 根據偵測到的不同類型加載對應的插件
filetype plugin on
" 定義快捷鍵到行首和行尾
nmap LB 0
nmap LE $
" 設置快捷鍵將選中文本塊複製至系統剪貼板
vnoremap <Leader>y "+y
" 設置快捷鍵將系統剪貼板內容粘貼至 vim
nmap <Leader>p "+p
" 定義快捷鍵關閉當前分割窗口
nmap <Leader>q :q<CR>
" 定義快捷鍵保存當前窗口內容
nmap <Leader>w :w<CR>
" 定義快捷鍵保存所有窗口並退出
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍歷子窗口
nnoremap nw <C-W><C-W>
" 跳轉至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳轉至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳轉至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳轉至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定義快捷鍵在結對符之間跳轉
nmap <Leader>M %
" 讓配置變更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 開啟實時搜索功能
set incsearch
" 搜索時大小寫不敏感
set ignorecase
" 關閉兼容模式
set nocompatible
" Backspace 工作方式關閉 vi 兼容模式
set backspace=indent,eol,start
" vim 自身命令行模式智能補全
set wildmenu
" 禁止光標閃爍
set gcr=a:block-blinkon0
" 禁止顯示滾動條
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止顯示菜單和工具條
set guioptions-=m
set guioptions-=T
" 總是顯示狀態欄
set laststatus=2
" 顯示光標當前位置
set ruler
" 開啟行號顯示
set number
" 高亮顯示當前行/列
set cursorline
set cursorcolumn
" 高亮顯示搜索結果
set hlsearch
" 折行
set wrap
"" 禁止折行
"set nowrap
" 平滑擴展
set sidescroll=1
" 開啟語法高亮模式
syntax enable
" 允許用指定語法高亮配色方案替換默認方案
syntax on
" 自適應不同語言的智能縮進
filetype indent on
" 將製表符擴展為空格
set expandtab
" 設置編輯時製表符佔用空格數
set tabstop=4
" 設置格式化時製表符佔用空格數
set shiftwidth=4
" 讓 vim 把連續數量的空格視為一個製表符
set softtabstop=4
" 基於縮進或語法進行代碼摺疊
"set foldmethod=indent
set foldmethod=syntax
" 啟動 vim 時關閉摺疊代碼
set nofoldenable
" 啟動/關閉粘貼模式
set pastetoggle=<F9>
