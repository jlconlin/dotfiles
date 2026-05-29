" Temporary Files
" create directory if needed
if !isdirectory($MYVIMDIR.'/files') && exists('*mkdir')
  call mkdir($MYVIMDIR.'/files')
endif
if !isdirectory($MYVIMDIR.'/files/backup') && exists('*mkdir')
  call mkdir($MYVIMDIR.'/files/backup')
endif
if !isdirectory($MYVIMDIR.'/files/swap') && exists('*mkdir')
  call mkdir($MYVIMDIR.'/files/swap')
endif
if !isdirectory($MYVIMDIR.'/files/undo') && exists('*mkdir')
  call mkdir($MYVIMDIR.'/files/undo')
endif

set backupdir =$MYVIMDIR/files/backup/
set directory =$MYVIMDIR/files/swap/
set undofile
set undodir   =$MYVIMDIR/files/undo/


