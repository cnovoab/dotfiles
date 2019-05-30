execute pathogen#infect()
" let g:deoplete#enable_at_startup = 1
augroup filetypedetect javascript syntax=javascript
" set runtimepath-=~/.vim/bundle/YouCompleteMe
" set runtimepath-=~/.vim/bundle/vim-tslint
" set runtimepath-=~/.vim/bundle/typescript-vim
" set runtimepath-=~/.vim/bundle/tsuquyomi
set runtimepath-=~/.vim/bundle/yats

filetype plugin indent on
syntax on

set noshowmode
set noswapfile
set number
set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0
set laststatus=2
set wrap linebreak nolist
set wildmode=full
set nocompatible
set autoindent
set encoding=utf-8
set clipboard=unnamed
set splitbelow

" Vim test map
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> tt :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Tsuquyomi Tooltip
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

" Ctrlp skip paths
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" YCM + tsuquyomi
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('ts', 'Magenta', 'none', '#ff00ff', '#151515')

" Map for tabs
map <C-j> :tabr<cr>
map <C-k> :tabl<cr>
map <C-h> :tabp<cr>
map <C-l> :tabn<cr>
