filetype plugin indent on
set expandtab
set shiftwidth=4

function! Formatonsave()
  let l:lines="all"
  py3f /usr/share/vim/addons/syntax/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()
