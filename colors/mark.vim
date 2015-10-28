" Vim color file
"
" Author: Anthony Carapetis <anthony.carapetis@gmail.com>
"
" Note: Based on github's syntax highlighting theme
"       Used Brian Mock's darkspectrum as a starting point/template
"       Thanks to Ryan Heath for an easy list of some of the colours:
"       http://rpheath.com/posts/356-github-theme-for-syntax-gem

hi clear

set background=light
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="github"

hi Normal       ctermfg=black ctermbg=NONE

" {{{ Cursor
hi Cursor		ctermbg=60 ctermfg=189
hi CursorLine	        ctermbg=230 cterm=none
hi CursorLineNr	        ctermbg=230 cterm=none
hi CursorColumn	        ctermbg=189
" }}}

" {{{ Diff
hi DiffAdd              ctermfg=28 ctermbg=194 cterm=none
hi DiffChange           ctermbg=254   cterm=none
hi DiffText             ctermfg=blue  ctermbg=189 cterm=none
hi DiffDelete           ctermfg=181   ctermbg=224 cterm=none
" }}}

" {{{ Folding / Line Numbering / Status Lines
hi Folded		ctermbg=255 ctermfg=244 cterm=bold
hi vimFold		ctermbg=255 ctermfg=244 cterm=bold
hi FoldColumn	        ctermbg=255 ctermfg=244 cterm=bold

hi LineNr		ctermfg=246 ctermbg=255 cterm=bold
hi NonText		ctermfg=244 ctermbg=255
"hi Folded		ctermfg=244 ctermbg=255 cterm=bold
"hi FoldeColumn          ctermfg=244 ctermbg=255 cterm=bold

hi VertSplit	ctermbg=250 ctermfg=250 cterm=none
"hi StatusLine   ctermbg=250 ctermfg=238 cterm=bold
"hi StatusLineNC ctermbg=245 ctermfg=238 cterm=italic
hi StatusLineNC   ctermbg=250 ctermfg=254 cterm=bold
hi StatusLine   ctermbg=240 ctermfg=255 cterm=bold
" }}}

" {{{ Misc
hi ModeMsg		ctermfg=88
hi MoreMsg		ctermfg=88

hi Title		ctermfg=166
hi WarningMsg	ctermfg=166
hi SpecialKey   ctermfg=30 cterm=italic

hi MatchParen	ctermbg=189 ctermfg=black
hi Underlined	ctermfg=black cterm=underline
hi Directory	ctermfg=88
" }}}

" {{{ Search, Visual, etc
hi Visual		ctermfg=white ctermbg=61 cterm=none
hi VisualNOS    ctermfg=white ctermbg=24 cterm=none
hi IncSearch	ctermbg=189 ctermfg=black cterm=italic
hi Search		ctermbg=189 ctermfg=black cterm=italic
" }}}

" {{{ Syntax groups
hi Ignore		ctermfg=244
hi Identifier	        ctermfg=31
hi PreProc		ctermfg=247 cterm=bold
hi phpDocTags           ctermfg=black cterm=bold ctermbg=255
hi Comment		ctermfg=251 ctermbg=255
hi Constant		ctermfg=130 cterm=none
hi phpConstants		ctermfg=130 cterm=bold
hi phpIdentifier	ctermfg=52 ctermbg=none
hi Operator             ctermfg=242
hi String		ctermfg=161
hi Function		ctermfg=88 cterm=bold
hi Statement	        ctermfg=black cterm=bold
hi Type			ctermfg=60 cterm=bold
hi Number		ctermfg=30
hi Todo			ctermfg=white ctermbg=88 cterm=bold
hi Special		ctermfg=28 cterm=bold
hi rubySymbol           ctermfg=90
hi Error                ctermbg=189 ctermfg=red cterm=undercurl
hi Todo                 ctermbg=189 ctermfg=red cterm=underline
hi Label                ctermfg=black cterm=bold
hi StorageClass         ctermfg=black cterm=bold
hi Structure            ctermfg=black cterm=bold
hi TypeDef              ctermfg=black cterm=bold
" }}}

" {{{ Completion menus
hi WildMenu     ctermfg=111 ctermbg=60 cterm=none

hi Pmenu        ctermbg=244 ctermfg=white cterm=bold
hi PmenuSel     ctermbg=189 ctermfg=black cterm=italic
hi PmenuSbar    ctermbg=black ctermfg=238
hi PmenuThumb   ctermbg=248 ctermfg=248
" }}}

" {{{ Aliases
hi link cppSTL          Function
hi link cppSTLType      Type
hi link Character		Number
hi link htmlTag			htmlEndTag
"hi link htmlTagName     htmlTag
hi link htmlLink		Underlined
hi link pythonFunction	Identifier
hi link Question		Type
hi link CursorIM		Cursor
hi link VisualNOS		Visual
hi link xmlTag			Identifier
hi link xmlTagName		Identifier
hi link shDeref			Identifier
hi link shVariable		Function
hi link rubySharpBang	Special
hi link perlSharpBang	Special
hi link schemeFunc      Statement
"hi link shSpecialVariables Constant
"hi link bashSpecialVariables Constant
" }}}

" {{{ Tabs (non-cterm0
hi TabLine		ctermfg=238 ctermbg=214 cterm=none
hi TabLineFill	ctermfg=238 ctermbg=214 cterm=none
hi TabLineSel	ctermfg=black ctermbg=white cterm=bold
" }}}

hi ModeMsg term=bold cterm=bold ctermbg=1 ctermfg=255
hi StatusLine     term=bold,reverse cterm=bold ctermfg=255 ctermbg=22 gui=bold guifg=#404040 guibg=#bbffbb
hi StatusLineNC   term=reverse ctermfg=0 ctermbg=250 gui=italic guifg=#404040 guibg=#d4d4d4
hi SignColumn ctermbg=none
hi SyntasticErrorSign ctermbg=none ctermfg=red
hi SyntasticError ctermbg=none ctermfg=red
hi SyntasticSError ctermbg=none ctermfg=red
hi SyntasticWarning ctermbg=none ctermfg=red
hi SyntasticSWarning ctermbg=none ctermfg=red
hi qfError ctermbg=none ctermfg=red
hi phpDocCustomTags           ctermfg=gray cterm=bold ctermbg=255

"highlight ExtraWhitespace ctermbg=blue guibg=blue ctermfg=white guifg=white
"match ExtraWhitespace /\s\+\%#\@<!$\|\t\|[\x80-\xff]/

" vim: sw=4 ts=4 foldmethod=marker
