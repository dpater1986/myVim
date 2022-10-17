let g:netrw_keepdir=0
let g:netrw_banner=0
let g:netrw_winsize=30
hi! link netrwMarkFile Search
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_localcopydircmd = 'cp -r'

nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <leader>da :Lexplore<CR>

function! NetrwMapping()
  nmap <buffer> H u
  nmap <buffer> h -^
  nmap <buffer> l <CR>

  nmap <buffer> . gh
  nmap <buffer> P <C-w>z

  nmap <buffer> L <CR>:Lexplore<CR>
  nmap <buffer> <Leader>dd :Lexplore<CR>
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

