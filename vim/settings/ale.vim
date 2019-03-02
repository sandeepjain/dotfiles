let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_delay = 300
" let g:ale_lint_on_text_changed = 'never'

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   'javascript': [
\       'remove_trailing_lines',
\       'trim_whitespace',
\       'eslint',
\   ],
\}
