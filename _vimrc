set nocompatible              " be iMproved, required                                                                                           
filetype off                  " required
 
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  
Plugin 'gmarik/Vundle.vim'
"Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/grep.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'bling/vim-airline'
call vundle#end()            " required
filetype plugin indent on    " required
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent

"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#syntastic#enabled = 1

"taglist
nnoremap <silent> <F8> :TlistToggle<cr>

"vimdiff
set diffopt=vertical
  
set foldlevel=99
"不备份
set nobackup
"显示行号
set nu!
"忽略大小写搜索
set ignorecase
"开启光标光亮
set cursorline
hi CursorLine cterm = underline
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey 
"显示 bracets 配对
set showmatch
"tab宽度
set tabstop=4
"tab自动缩进宽度
set shiftwidth=4


"设置自动缩进
set ai
   
"pymodle"
let g:pymode_lint = 0
let g:pymode_rope_completion = 0
      
"nerdtree"
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1
nnoremap <silent> <F10> :NERDTree <CR>
" grep"
nnoremap <silent> <F4> :Grep -r <cword> *[^tags] <CR>
            
nnoremap <C-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <C-k> :YcmCompleter GoToDeclaration<CR>
let g:ycm_confirm_extra_conf = 0                                                                                                                
 
"nnoremap <C-n> gt
"nnoremap <C-m> gT


"fuzzy find
nnoremap <silent> <C-f> :FufCoverageFile<CR>
noremap <silent> <F2> :FufBufferTag<CR>

