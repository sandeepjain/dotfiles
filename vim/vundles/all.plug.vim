" =========================================
" Appearance
" =========================================
Plug 'chrisbra/color_highlight'
Plug 'skwp/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'bogado/file-line'
Plug 'jby/tmux.vim'
Plug 'morhetz/gruvbox'
Plug 'xsunsmile/showmarks'
Plug 'chriskempson/base16-vim'

"Plug 'joshdick/onedark.vim'

" =========================================
" Vim Improvements
" =========================================
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Raimondi/delimitMate'
Plug 'briandoll/change-inside-surroundings.vim'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/camelcasemotion'
Plug 'vim-scripts/matchit.zip'
Plug 'terryma/vim-multiple-cursors'
Plug 'Keithbsmiley/investigate.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/webapi-vim'
Plug 'sjl/gundo.vim'
Plug 'skwp/YankRing.vim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'vim-scripts/AutoTag'
Plug 'vim-scripts/lastpos.vim'
Plug 'vim-scripts/sudo.vim'
Plug 'goldfeld/ctrlr.vim'
Plug 'ervandew/supertab'
Plug 'tommcdo/vim-exchange'
" Plug 'christoomey/vim-tmux-navigator'


" =========================================
" Git
" =========================================
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Plug 'mattn/gist-vim'

" =========================================
" Languages
" =========================================
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --all
  endif
endfunction

Plug 'briancollins/vim-jst'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'claco/jasmine.vim'
Plug 'digitaltoad/vim-jade'
Plug 'groenewege/vim-less'
Plug 'itspriddle/vim-jquery'
Plug 'jtratner/vim-flavored-markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'w0rp/ale'
Plug 'nelstrom/vim-markdown-preview'
Plug 'skwp/vim-html-escape'
Plug 'tpope/vim-haml'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'jwalton512/vim-blade'
Plug 'evidens/vim-twig'
Plug 'mxw/vim-jsx'

Plug 'sbdchd/neoformat'


" =========================================
" Project
" =========================================
Plug 'scrooloose/nerdtree'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'

" =========================================
" Search
" =========================================
"Plug 'justinmk/vim-sneak'
Plug 'rking/ag.vim'
Plug 'vim-scripts/IndexedSearch'
Plug 'nelstrom/vim-visual-star-search'
Plug 'skwp/greplace.vim'
Plug 'skwp/vim-easymotion'

" =========================================
" Textobjects
" =========================================
" These bundles introduce new textobjects into vim,
" For example the Ruby one introduces the 'r' text object
" such that 'var' gives you Visual Around Ruby

Plug 'austintaylor/vim-indentobject'
Plug 'coderifous/textobj-word-column.vim'
Plug 'kana/vim-textobj-datetime'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-user'
Plug 'lucapette/vim-textobj-underscore'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'thinca/vim-textobj-function-javascript'
Plug 'vim-scripts/argtextobj.vim'

" =========================================
" Misc
" =========================================
