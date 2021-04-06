" Last Change: 2021 Apr 06

if !exists("g:colors_name") || g:colors_name !=? "oak"
  finish
endif

call oak#hi('htmlArg',  g:oak#palette.leaf2)
call oak#hi('htmlLink', g:oak#palette.fur4, '', 'underline')
hi! link htmlItalic      Italic
hi! link htmlBold        Bold
hi! link htmlH1          markdownH1
hi! link htmlH2          markdownH1
hi! link htmlH3          markdownH1
hi! link htmlH4          markdownH1
hi! link htmlH5          markdownH1
hi! link htmlH6          markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag         Keyword
hi! link htmlTagN        htmlTag
hi! link htmlEndTag      htmlTag
