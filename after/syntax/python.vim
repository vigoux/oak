" Last Change: 2021 Apr 06

if !exists("g:colors_name") || g:colors_name !=? "oak"
  finish
endif

call oak#hi('pythonFunction', g:oak#palette.fur3)
hi! link pythonStatement Operator
hi! link pythonBuiltin   Type
hi! link pythonEscape    SpecialChar
