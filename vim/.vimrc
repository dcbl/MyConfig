"==========================================
" Author: dckdl
" Version: 1.0
"==========================================



" 修改leader键
let mapleader = ','
let g:mapleader = ','

" 开启语法高亮
syntax on

" 突出显示当前列
set cursorcolumn

" 突出显示当前行
set cursorline

" 显示行号
set number
" 取消换行
set nowrap

" tab相关变更
" 设置Tab键的宽度        [等同的空格个数]
set tabstop=4
" 每一次缩进对应的空格数
set shiftwidth=4
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4


" F2 行号开关，用于鼠标复制代码用
" 为方便复制，用<F2>开启/关闭行号显示:
function! HideNumber() 
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)      
    set number!        
  else                 
    set relativenumber!
  endif                
  set number?          
endfunc                
nnoremap <F2> :call HideNumber()<CR>
"==========================================
" 快捷键
"==========================================

noremap H ^
noremap L $

nnoremap ; :

" kj 替换 Esc
inoremap kj <Esc>

"==========================================
" 插件
"==========================================
" install bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

"==========================================
" Theme Settings  主题设置
"https://github.com/tomasr/molokai
"==========================================

"主题
colorscheme molokai

set background=dark

"开启256色支持
set t_Co=256

" 设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange


autocmd FileType java setlocal omnifunc=javacomplete#Complete
