" ===
" Milans Awesome NVim config
" ===

" enable line numbers
set number

" enable all clipboard features
set clipboard+=unnamedplus

" Using https://github.com/junegunn/vim-plug plugin manager:
" 	:PlugInstall to install the plugins
" 	:PlugUpdate to install or update the plugins
" 	:PlugDiff to review the changes from the last update
" 	:PlugClean to remove plugins no longer in the list
call plug#begin()

" List your plugins here
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive' " git plugin
Plug 'tpope/vim-sensible' " great defaults

call plug#end()

" toggle nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>
