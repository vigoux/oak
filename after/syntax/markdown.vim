" Last Change: 2021 Apr 06

if !exists("g:colors_name") || g:colors_name !=? "oak"
  finish
endif

call oak#hi('markdownBlockquote',       g:oak#palette.leaf2)
call oak#hi('markdownCode',             g:oak#palette.leaf2)
call oak#hi('markdownCodeDelimiter',    g:oak#palette.leaf2)
call oak#hi('markdownFootnote',         g:oak#palette.leaf2)
call oak#hi('markdownId',               g:oak#palette.leaf2)
call oak#hi('markdownIdDeclaration',    g:oak#palette.leaf2)
call oak#hi('markdownH1',               g:oak#palette.fur3)
call oak#hi('markdownHeadingDelimiter', g:oak#palette.leaf1)
call oak#hi('markdownRule',             g:oak#palette.leaf1)
call oak#hi('markdownLinkText',         g:oak#palette.leaf3)
call oak#hi('markdownUrl',              g:oak#palette.fur4,  '', 'underline')
hi! link markdownBold               Bold
hi! link markdownItalic             Italic
hi! link markdownBoldDelimiter      Keyword
hi! link markdownItalicDelimiter    Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2                 markdownH1
hi! link markdownH3                 markdownH1
hi! link markdownH4                 markdownH1
hi! link markdownH5                 markdownH1
hi! link markdownH6                 markdownH1
hi! link markdownIdDelimiter        Keyword
hi! link markdownLinkDelimiter      Keyword
hi! link markdownLinkTextDelimiter  Keyword
hi! link markdownListMarker         Keyword
