" Last Change: 2021 Jan 27

" sectioning etc.
call oak#hi('texCmdParts',     g:oak#palette.fur3)
call oak#hi('texPartArgTitle', g:oak#palette.petal2)
call oak#hi('texTitle',     g:oak#palette.fur3, '', 'bold')
call oak#hi('texAuthor',    g:oak#palette.fur3, '', 'bold')
call oak#hi('texTitleArg',     g:oak#palette.petal2, '', 'bold')
call oak#hi('texAuthorArg',    g:oak#palette.petal2, '', 'italic')
call oak#hi('texFootnoteArg',  g:oak#palette.trunk4,   '', 'italic')
call oak#hi('texBeginEnd', g:oak#palette.fur3, '', 'italic')

" environments
call oak#hi('texCmdEnv',     g:oak#palette.leaf3)
call oak#hi('texEnvArgName', g:oak#palette.fur3)
call oak#hi('texEnvOpt',     g:oak#palette.petal2)

" math
call oak#hi('texMathZoneX', g:oak#palette.leaf2)
call oak#hi('texMathMatcher', g:oak#palette.leaf2)

" references
call oak#hi('texCmdRef', g:oak#palette.leaf3)
call oak#hi('texRefArg', g:oak#palette.fur2)
call oak#hi('texRefOpt', g:oak#palette.leaf1)
call oak#hi('texUrlArg', g:oak#palette.fur4,  '', 'underline')
hi! link texCmdCRef     texCmdRef
hi! link texHrefArgLink texUrlArg
hi! link texHrefArgText texOpt

" symbols
call oak#hi('texSymbol',      g:oak#palette.leaf2)
call oak#hi('texSpecialChar', g:oak#palette.leaf3)
hi! link texDelim       texSymbol
hi! link texTabularChar texSymbol

" files
call oak#hi('texFileArg', g:oak#palette.leaf1)
call oak#hi('texFileOpt', g:oak#palette.fur1)
