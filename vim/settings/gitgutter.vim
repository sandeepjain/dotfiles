set updatetime=250

let g:gitgutter_realtime = 1
let g:gitgutter_eager = 0
let g:gitgutter_sign_column_always = 1

nmap <Leader>is <Plug>GitGutterStageHunk
nmap <Leader>ir <Plug>GitGutterRevertHunk
nmap <Leader>ip <Plug>GitGutterPreviewHunk

nmap <Leader>it <Plug>GitGutterToggle
