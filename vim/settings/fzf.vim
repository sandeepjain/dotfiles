let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" let $FZF_DEFAULT_OPTS='--color=bg+:#073642,bg:#002b36,spinner:#719e07,hl:#586e75 --color=fg:#839496,header:#586e75,info:#cb4b16,pointer:#719e07 --color=marker:#719e07,fg+:#839496,prompt:#719e07,hl+:#719e07'

" In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
" let g:fzf_layout = { 'window': '10split enew' }
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_buffers_jump = 1

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  "let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 1
else
  " Fall back to using git ls-files if Ag is not available
  "let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  "let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif


" Default to filename searches - so that appctrl will find application
" controller
"let g:ctrlp_by_filename = 0

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
"let g:ctrlp_switch_buffer = 0

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
"let g:ctrlp_map = ',t'
nnoremap <silent> ,t :FZF -m<CR>

" Additional mapping for buffer search
nnoremap <silent> ,b :Buffers<cr>
nnoremap <silent> <C-b> :Buffers<cr>

" Cmd-Shift-P to clear the cache
"nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
" map ,jw :CtrlP www<CR>
" map ,jm :CtrlP app/models<CR>
" map ,jc :CtrlP www/css<CR>
" map ,jv :CtrlP app/views<CR>
" map ,jh :CtrlP app/helpers<CR>
" map ,jl :CtrlP lib<CR>
" map ,jp :CtrlP public<CR>
" map ,js :CtrlP www/js<CR>
" map ,jf :CtrlP fast_spec<CR>
" map ,jd :CtrlP db<CR>
" map ,jC :CtrlP config<CR>
" map ,jV :CtrlP vendor<CR>
" map ,jF :CtrlP factories<CR>
" map ,jT :CtrlP test<CR>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
"nnoremap <silent> <D-M> :CtrlPBufTag<CR>
