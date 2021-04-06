" Last Change: 2021 Apr 06

if !exists("g:colors_name") || g:colors_name !=? "oak"
  finish
endif

call oak#hi('vimCmdSep',     g:oak#palette.fur4)
call oak#hi('vimCommand',    g:oak#palette.leaf1)
call oak#hi('vimGroup',      g:oak#palette.leaf3, '', 'italic')
call oak#hi('vimHiGroup',    g:oak#palette.leaf3, '', 'italic')
call oak#hi('vimIsCommand',  g:oak#palette.leaf2)
call oak#hi('vimSynMtchOpt', g:oak#palette.leaf3)
call oak#hi('vimSynType',    g:oak#palette.fur1)
call oak#hi('vimVar',        g:oak#palette.trunk5)
hi! link vimCommentString Comment
hi! link vimFunc          Function
hi! link vimFuncName      Function
hi! link vimUserFunc      Function
