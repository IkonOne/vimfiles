" ----- NeoBundle -----

set nocompatible
if has('vim_starting')
	set rtp+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'nosami/Omnisharp'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tomasr/molokai'
NeoBundle 'reedes/vim-colors-pencil'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bling/vim-airline'
NeoBundle 'jdonaldson/vaxe'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'jdonaldson/vaxe'
NeoBundle 'SirVer/ultisnips'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" ----- General Setting ------

set number

" tab size
set tabstop=4
set shiftwidth=4

" required to invoke Vaxe completion
set autowrite

" ctags
set tags=tags;

" colors
syntax on
colorscheme molokai
"  colorscheme pencil
"  set background=light

" ----- vim-airline -----
set laststatus=2

" ----- TagBar -----

nmap <F8> :TagbarToggle<CR>

" ----- NerdTree -----

nmap <F7> :NERDTreeToggle<CR>

" ---- OmniSharp ----

filetype plugin on
set noshowmatch

autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

" ---- Ultisnips ----

" let g:UltiSnipsExpandTrigger="<c-space>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackTrigger="<c-z>"
