" Temporary Files
" create directory if needed
if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files')
endif
if !isdirectory($HOME.'/.vim/files/backup') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files/backup')
endif
if !isdirectory($HOME.'/.vim/files/swap') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files/swap')
endif
if !isdirectory($HOME.'/.vim/files/undo') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files/undo')
endif

set backupdir =$HOME/.vim/files/backup/
set directory =$HOME/.vim/files/swap/
set undofile
set undodir   =$HOME/.vim/files/undo/


