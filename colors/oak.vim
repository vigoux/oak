" Last Change: 2020 Nov 24
set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'oak'

let s:trunk1  = '#0E0701'
let s:trunk2  = '#342212'
let s:trunk3  = '#593C22'
let s:trunk4  = '#AC9682'
let s:trunk5  = '#FEEFE1'
let s:fur1    = '#7A5454'
let s:fur2    = '#A58A86'
let s:fur3    = '#E27950'
let s:fur4    = '#D69060'
let s:leaf1   = '#B990D5'
let s:leaf2   = '#2DC7D2'
let s:leaf3   = '#42BD7D'
let s:petal1  = '#FF4D4D'
let s:petal2  = '#F0C54C'

let g:terminal_color_0  = s:trunk1
let g:terminal_color_1  = s:petal1
let g:terminal_color_2  = s:fur2
let g:terminal_color_3  = s:petal2
let g:terminal_color_4  = s:leaf3
let g:terminal_color_5  = s:leaf1
let g:terminal_color_6  = s:fur1
let g:terminal_color_7  = s:trunk4

let g:terminal_color_8  = s:trunk2
let g:terminal_color_9  = s:petal1
let g:terminal_color_10 = s:fur2
let g:terminal_color_11 = s:petal2
let g:terminal_color_12 = s:leaf3
let g:terminal_color_13 = s:leaf1
let g:terminal_color_14 = s:leaf2
let g:terminal_color_15 = s:trunk5

function! s:orNONE(str)
  return len(a:str) > 0 ? a:str : 'NONE'
endfunction

function! s:hi(group, fg, ...) " bg, attrs
  let l:fg = s:orNONE(a:fg)
  let l:bg = s:orNONE(get(a:, 1, ''))
  let l:attrs = s:orNONE(get(a:, 2, ''))

  let l:hl_string = [
        \ 'highlight', a:group,
        \ 'guifg=' . l:fg,
        \ 'guibg=' . l:bg,
        \ 'gui=' . l:attrs,
        \]

  execute join(l:hl_string, ' ')
endfunction

call s:hi('Bold',       s:trunk4,  '',     'bold')
call s:hi('Italic',     s:trunk4,  '',     'italic')
call s:hi('Underlined', s:fur4, '',     'underline')

" nvim
call s:hi('Normal',     s:trunk5,  s:trunk1)
call s:hi('Visual',     '',       s:trunk2)
call s:hi('VisualNOS',  '',       s:trunk2)
call s:hi('Search',     s:trunk2, s:fur3)
call s:hi('IncSearch',  s:trunk2, s:trunk4)

call s:hi('MatchParen', '',  s:trunk2)
call s:hi('Whitespace',  s:trunk2)
call s:hi('NonText',     s:trunk2)
call s:hi('EndOfBuffer', s:trunk3)

call s:hi('Question',     s:fur2)
call s:hi('Title',        s:fur3)
call s:hi('Directory',    s:fur1)
call s:hi('SpecialKey',   s:fur4)
call s:hi('ErrorMsg',     s:petal1, s:trunk1)
call s:hi('WarningMsg',   s:fur3, s:trunk1)
call s:hi('ModeMsg',      s:trunk4,   s:trunk1)
call s:hi('MoreMsg',      s:fur1,  s:trunk1)
call s:hi('MsgSeparator', '',        s:trunk2)

call s:hi('Cursor',       s:trunk1, s:trunk4)
call s:hi('iCursor',      s:trunk1, s:trunk4)
call s:hi('TermCursorNC', '',       s:trunk2)
call s:hi('CursorColumn', '',       s:trunk2)
call s:hi('CursorLine',   '',       s:trunk2)
call s:hi('CursorLineNr', s:trunk4,  s:trunk2)
call s:hi('ColorColumn',  '',       s:trunk2)
call s:hi('LineNr',       s:trunk3)
call s:hi('SignColumn',   s:trunk2, s:trunk1)
call s:hi('StatusLine',   s:trunk4, s:trunk2, 'bold')"{{{
call s:hi('StatusLineNC', s:trunk3, s:trunk2)
call s:hi('Folded',       s:trunk5, s:trunk2)"}}}

call s:hi('VertSplit',    s:trunk3, s:trunk2)

call s:hi('Pmenu',      s:trunk4, s:trunk2)
call s:hi('PmenuSel',   s:trunk5, s:trunk3)
call s:hi('PmenuSbar',  '',  s:trunk3)
call s:hi('PmenuThumb', '',  s:trunk2)
hi! link Wildmenu Pmenu

call s:hi('SpellBad',   s:petal1, '', 'undercurl')
call s:hi('SpellCap',   s:leaf2, '', 'undercurl')
call s:hi('SpellLocal', s:trunk4,   '', 'undercurl')
call s:hi('SpellRare',  s:trunk5,   '', 'undercurl')

call s:hi('healthError',   s:petal1)
call s:hi('healthSuccess', s:leaf3)
call s:hi('healthWarning', s:petal2)

" plugins
call s:hi('gitcommitDiscardedFile', s:petal1)
call s:hi('gitcommitUntrackedFile', s:petal1)
call s:hi('gitcommitSelectedFile',  s:leaf3)

call s:hi('LspDiagnosticsDefaultError',       s:petal1)
call s:hi('LspDiagnosticsDefaultWarning',     s:petal2)
call s:hi('LspDiagnosticsDefaultInformation', s:leaf2)
call s:hi('LspDiagnosticsDefaultHint',        s:fur4)
call s:hi('LspDiagnosticsUnderlineError',       s:petal1, '', 'underline')
call s:hi('LspDiagnosticsUnderlineWarning',     s:petal2, '', 'underline')
call s:hi('LspDiagnosticsUnderlineInformation', s:leaf2, '', 'underline')
call s:hi('LspDiagnosticsUnderlineHint',        s:fur4, '', 'underline')
if g:oak_virtualtext_bg == 1
  call s:hi('LspDiagnosticsVirtualTextError',       s:petal1, '#2B190A')
  call s:hi('LspDiagnosticsVirtualTextWarning',     s:petal2, '#2B190A')
  call s:hi('LspDiagnosticsVirtualTextInformation', s:leaf2,  '#2B190A')
  call s:hi('LspDiagnosticsVirtualTextHint',        s:fur4,   '#2B190A')
endif

call s:hi('TelescopeMatching', s:fur4, '', 'bold')

" language builtin
call s:hi('Boolean',        s:petal2,  '',        'bold')
call s:hi('Character',      s:fur2)
call s:hi('Comment',        s:fur1,  '',        'italic')
call s:hi('Conditional',    s:leaf1)
call s:hi('Constant',       s:petal2)
call s:hi('Define',         s:leaf1)
call s:hi('Delimiter',      s:trunk5)
call s:hi('Error',          s:petal1, s:trunk1)
call s:hi('Exception',      s:leaf3)
call s:hi('Float',          s:petal2)
call s:hi('Function',       s:fur3)
call s:hi('Identifier',     s:fur2)
call s:hi('Include',        s:leaf1)
call s:hi('Keyword',        s:leaf1)
call s:hi('Label',          s:leaf2)
call s:hi('Macro',          s:leaf1)
call s:hi('Number',         s:petal2)
call s:hi('Operator',       s:leaf1)
call s:hi('PreCondit',      s:leaf3)
call s:hi('PreProc',        s:leaf1)
call s:hi('Repeat',         s:leaf1)
call s:hi('Special',        s:fur2)
call s:hi('SpecialChar',    s:leaf3)
call s:hi('SpecialComment', s:fur1,  '',        'italic')
call s:hi('Statement',      s:leaf3)
call s:hi('StorageClass',   s:leaf3)
call s:hi('String',         s:leaf2)
call s:hi('Structure',      s:leaf3)
call s:hi('Tag',            s:trunk4)
call s:hi('Todo',           s:trunk2,  s:fur3)
call s:hi('Type',           s:leaf3,  '',        'italic')
call s:hi('Typedef',        s:leaf3)

call s:hi('DiffAdd',    s:leaf3)
call s:hi('DiffChange', s:petal2)
call s:hi('DiffDelete', s:petal1)
hi! link diffAdded DiffAdd
hi! link diffRemoved DiffDelete

call s:hi('helpCommand',        s:fur1)
call s:hi('helpExample',        s:fur4)
call s:hi('helpHyperTextEntry', s:petal2)
call s:hi('helpHyperTextJump',  s:leaf3,  '', 'underline')
call s:hi('helpNote',           s:leaf1)
call s:hi('helpOption',         s:leaf2)
call s:hi('helpVim',            s:fur3)
hi! link helpSpecial  String
hi! link helpIgnore   Special
hi! link helpBacktick Special
hi! link helpBar      Special
hi! link helpStar     Special

call s:hi('vimCmdSep',     s:fur4)
call s:hi('vimCommand',    s:leaf1)
call s:hi('vimGroup',      s:leaf3, '', 'italic')
call s:hi('vimHiGroup',    s:leaf3, '', 'italic')
call s:hi('vimIsCommand',  s:leaf2)
call s:hi('vimSynMtchOpt', s:leaf3)
call s:hi('vimSynType',    s:fur1)
call s:hi('vimVar',        s:trunk5)
hi! link vimCommentString Comment
hi! link vimFunc          Function
hi! link vimFuncName      Function
hi! link vimUserFunc      Function

" Tree-sitter internals and uses
call s:hi("nodeType", s:trunk5)
call s:hi("nodeTag", s:fur1)
call s:hi('TSParameter', s:trunk5, '', 'italic')

" Behind this line is left untuched from @clason code
" I don't use stock highlighting, prefering tree-sitter (for good reason...)
" so I don't think I'll ever touch those
hi! link luaFunc  Function
hi! link luaTable Define
hi! link luaIn    Special

call s:hi('pythonFunction', s:fur3)
hi! link pythonStatement Operator
hi! link pythonBuiltin   Type
hi! link pythonEscape    SpecialChar

call s:hi('markdownBlockquote',       s:leaf2)
call s:hi('markdownCode',             s:leaf2)
call s:hi('markdownCodeDelimiter',    s:leaf2)
call s:hi('markdownFootnote',         s:leaf2)
call s:hi('markdownId',               s:leaf2)
call s:hi('markdownIdDeclaration',    s:leaf2)
call s:hi('markdownH1',               s:fur3)
call s:hi('markdownHeadingDelimiter', s:leaf1)
call s:hi('markdownRule',             s:leaf1)
call s:hi('markdownLinkText',         s:leaf3)
call s:hi('markdownUrl',              s:fur4,  '', 'underline')
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

call s:hi('htmlArg',  s:leaf2)
call s:hi('htmlLink', s:fur4, '', 'underline')
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

" vimtex
call s:hi('texCmd', s:leaf3)
call s:hi('texArg', s:petal2)
call s:hi('texOpt', s:fur1)

" sectioning etc.
call s:hi('texCmdParts',     s:fur3)
call s:hi('texPartArgTitle', s:petal2)
call s:hi('texCmdTitle',     s:fur3)
call s:hi('texCmdAuthor',    s:fur3)
call s:hi('texTitleArg',     s:petal2, '', 'bold')
call s:hi('texAuthorArg',    s:petal2, '', 'italic')
call s:hi('texFootnoteArg',  s:trunk4,   '', 'italic')

" environments
call s:hi('texCmdEnv',     s:leaf3)
call s:hi('texEnvArgName', s:fur3)
call s:hi('texEnvOpt',     s:petal2)

" math
call s:hi('texMathRegion',      s:leaf2)
call s:hi('texMathCmd',         s:fur1)
call s:hi('texMathDelim',       s:fur1)
call s:hi('texMathDelimRegion', s:leaf3)
call s:hi('texMathCmdEnv',      s:leaf3)
call s:hi('texMathEnvArgName',  s:leaf3)
hi! link texCmdMathText texCmdMathEnv
hi! link texCmdMathEnv  texMathCmdEnv

" references
call s:hi('texCmdRef', s:leaf3)
call s:hi('texRefArg', s:fur2)
call s:hi('texRefOpt', s:leaf1)
call s:hi('texUrlArg', s:fur4,  '', 'underline')
hi! link texCmdCRef     texCmdRef
hi! link texHrefArgLink texUrlArg
hi! link texHrefArgText texOpt

" symbols
call s:hi('texSymbol',      s:leaf1)
call s:hi('texSpecialChar', s:leaf3)
hi! link texDelim       texSymbol
hi! link texTabularChar texSymbol

" files
call s:hi('texFileArg', s:leaf1)
call s:hi('texFileOpt', s:fur1)

" bib
call s:hi('bibType',     s:fur3)
call s:hi('bibKey',      s:fur2)
call s:hi('bibEntryKw',  s:leaf2)
call s:hi('bibVariable', s:petal2)
