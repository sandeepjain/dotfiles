" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundles/ "Submodules
call vundle#rc()

" let Vundle manage Vundle (required)
Plug 'majutsushi/tagbar'

" All Plugins in single location
runtime all.plug.vim

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.vim/.vundles.local"))
  source ~/.vim/.vundles.local
endif

"Filetype plugin indent on is required by vundle
filetype plugin indent on
