" Install vim-plug if we don't already have it
" if empty(glob("~/.vim/autoload/plug.vim"))
"     " Ensure all needed directories exist  (Thanks @kapadiamush)
"     execute 'mkdir -p ~/.vim/plugged'
"     execute 'mkdir -p ~/.vim/autoload'
"     " Download the actual plugin manager
"     execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
" endif

" set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundles/ "Submodules
call plug#begin('~/.vim/plugged')

Plug 'majutsushi/tagbar'

runtime languages.vundle
runtime git.vundle
runtime appearance.vundle
runtime textobjects.vundle
runtime search.vundle
runtime project.vundle
runtime misc.vundle
runtime vim-improvements.vundle

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.vim/.vundles.local"))
  source ~/.vim/.vundles.local
endif

filetype plugin indent on                   " required!
call plug#end()
