" Copyright (C) 2020-present depsterr <depsterr at protonmail dot com>
" Copyright (C) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
" Copyright (C) 2016-present Sven Greb <development@svengreb.de>

" Forked from nord-vim

hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "vibrant-night"
set background=dark

let s:dblack  = "0"
let s:dred    = "1"
let s:dgreen  = "2"
let s:dyellow = "3"
let s:dblue   = "4"
let s:dpurple = "5"
let s:dcyan   = "6"
let s:dwhite  = "7"
let s:bblack  = "8"
let s:bred    = "9"
let s:bgreen  = "10"
let s:byellow = "11"
let s:bblue   = "12"
let s:bpurple = "13"
let s:bcyan   = "14"
let s:bwhite  = "15"

let s:italic = "italic,"

let s:bold = "bold,"

let s:underline = "underline,"

let s:italicize_comments = ""

function! s:logWarning(msg)
  echohl WarningMsg
  echomsg 'nord: warning: ' . a:msg
  echohl None
endfunction

function! s:hi(group, ctermfg, ctermbg, attr)
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+

"+--- Attributes ---+
call s:hi("Bold", "", "", s:bold)
call s:hi("Italic", "", "", s:italic)
call s:hi("Underline", "", "", s:underline)

"+--- Editor ---+
call s:hi("ColorColumn", "NONE", s:dblack, "")
call s:hi("Cursor", "", "NONE", "")
call s:hi("CursorLine", s:dcyan, s:bblack, "NONE")
call s:hi("Error", "", s:dred, "")
call s:hi("iCursor", "", "NONE", "")
call s:hi("LineNr", s:bblack, "NONE", "")
call s:hi("MatchParen", s:dcyan, s:bblack, "")
call s:hi("NonText", s:bblack, "", "")
call s:hi("Normal", "NONE", "NONE", "")
call s:hi("PMenu", "NONE", s:dblack, "NONE")
call s:hi("PmenuSbar", "NONE", s:dblack, "")
call s:hi("PMenuSel", s:dcyan, s:bblack, "")
call s:hi("PmenuThumb", "NONE", s:bblack, "")
call s:hi("SpecialKey", s:bblack, "", "")
call s:hi("SpellBad", s:dred, "NONE", "undercurl")
call s:hi("SpellCap", s:dyellow, "NONE", "undercurl")
call s:hi("SpellLocal", s:dblue, "NONE", "undercurl")
call s:hi("SpellRare", s:bwhite, "NONE", "undercurl")
call s:hi("Visual", "NONE", s:bblack, "")
call s:hi("VisualNOS", "NONE", s:bblack, "")

"+--- Gutter ---+
call s:hi("CursorColumn", "NONE", s:dblack, "")
call s:hi("CursorLineNr", "NONE", "", "NONE")
call s:hi("Folded", s:bblack, s:dblack, s:bold)
call s:hi("FoldColumn", s:bblack, "NONE", "")
call s:hi("SignColumn", s:dblack, "NONE", "")

"+--- Navigation ---+
call s:hi("Directory", s:dcyan, "NONE", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:dblack, "NONE", "")
call s:hi("ErrorMsg", "NONE", s:dred, "")
call s:hi("ModeMsg", "", "", "")
call s:hi("MoreMsg", s:dcyan, "", "")
call s:hi("Question", "NONE", "", "")
call s:hi("StatusLine", s:bwhite, s:dblack, "NONE")
call s:hi("StatusLineNC", s:bblack, s:dblack, "NONE")
call s:hi("StatusLineTerm", s:bwhite, s:dblack, "NONE")
call s:hi("StatusLineTermNC", s:bblack, s:dblack, "NONE")
call s:hi("WarningMsg", s:dblack, s:dyellow, "")
call s:hi("WildMenu", s:dcyan, s:dblack, "")

"+--- Search ---+
call s:hi("IncSearch", s:bwhite, s:bblue, s:underline)
call s:hi("Search", s:dcyan, s:bblack, "NONE")

"+--- Tabs ---+
call s:hi("TabLine", "NONE", s:dblack, "NONE")
call s:hi("TabLineFill", "NONE", s:dblack, "NONE")
call s:hi("TabLineSel", s:dcyan, s:bblack, "NONE")

"+--- Window ---+
call s:hi("Title", "NONE", "", "NONE")

call s:hi("VertSplit", s:bpurple, "NONE", "NONE")

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:dpurple, "", "")
call s:hi("Character", s:dgreen, "", "")
call s:hi("Comment", s:bblack, "", s:italicize_comments)
call s:hi("Conditional", s:dpurple, "", "")
call s:hi("Constant", "NONE", "", "")
call s:hi("Define", s:dpurple, "", "")
call s:hi("Delimiter", s:bwhite, "", "")
call s:hi("Exception", s:dpurple, "", "")
call s:hi("Float", s:dcyan, "", "")
call s:hi("Function", s:dcyan, "", "")
call s:hi("Identifier", "NONE", "", "NONE")
call s:hi("Include", s:dpurple, "", "")
call s:hi("Keyword", s:dpurple, "", "")
call s:hi("Label", s:dpurple, "", "")
call s:hi("Number", s:dcyan, "", "")
call s:hi("Operator", s:dpurple, "", "NONE")
call s:hi("PreProc", s:dpurple, "", "NONE")
call s:hi("Repeat", s:dpurple, "", "")
call s:hi("Special", "NONE", "", "")
call s:hi("SpecialChar", s:dyellow, "", "")
call s:hi("SpecialComment", s:dcyan, "", s:italicize_comments)
call s:hi("Statement", s:dpurple, "", "")
call s:hi("StorageClass", s:dpurple, "", "")
call s:hi("String", s:dgreen, "", "")
call s:hi("Structure", s:dpurple, "", "")
call s:hi("Tag", "", "", "")
call s:hi("Todo", s:dyellow, "NONE", "")
call s:hi("Type", s:dpurple, "", "NONE")
call s:hi("Typedef", s:dpurple, "", "")
hi! link Macro Define
hi! link PreCondit PreProc

"+-----------+
"+ Languages +
"+-----------+
call s:hi("asciidocAttributeEntry", s:bblue, "", "")
call s:hi("asciidocAttributeList", s:bblue, "", "")
call s:hi("asciidocAttributeRef", s:bblue, "", "")
call s:hi("asciidocHLabel", s:dpurple, "", "")
call s:hi("asciidocListingBlock", s:bcyan, "", "")
call s:hi("asciidocMacroAttributes", s:dcyan, "", "")
call s:hi("asciidocOneLineTitle", s:dcyan, "", "")
call s:hi("asciidocPassthroughBlock", s:dpurple, "", "")
call s:hi("asciidocQuotedMonospaced", s:bcyan, "", "")
call s:hi("asciidocTriplePlusPassthrough", s:bcyan, "", "")
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

call s:hi("awkCharClass", s:bcyan, "", "")
call s:hi("awkPatterns", s:dpurple, "", s:bold)
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:bcyan, "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

call s:hi("cmakeGeneratorExpression", s:bblue, "", "")

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:bcyan, "", "")
call s:hi("cssDefinition", s:bcyan, "", "NONE")
call s:hi("cssIdentifier", s:bcyan, "", s:underline)
call s:hi("cssStringQ", s:bcyan, "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:dcyan, "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:bcyan, "", "")
call s:hi("dtExecKey", s:bcyan, "", "")
call s:hi("dtLocaleKey", s:bcyan, "", "")
call s:hi("dtNumericKey", s:bcyan, "", "")
call s:hi("dtTypeKey", s:bcyan, "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

call s:hi("DiffAdd", s:dgreen, s:dblack, "")
call s:hi("DiffChange", s:dyellow, s:dblack, "")
call s:hi("DiffDelete", s:dred, s:dblack, "")
call s:hi("DiffText", s:dpurple, s:dblack, "")
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("gitconfigVariable", s:bcyan, "", "")

call s:hi("goBuiltins", s:bcyan, "", "")
hi! link goConstants Keyword

call s:hi("helpBar", s:bblack, "", "")
call s:hi("helpHyperTextJump", s:dcyan, "", s:underline)

call s:hi("htmlArg", s:bcyan, "", "")
call s:hi("htmlLink", "", "", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:bcyan, "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:bcyan, "", "")

call s:hi("lessClass", s:bcyan, "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:dpurple, "", "")
call s:hi("markdownCode", s:bcyan, "", "")
call s:hi("markdownCodeDelimiter", s:bcyan, "", "")
call s:hi("markdownFootnote", s:bcyan, "", "")
call s:hi("markdownId", s:bcyan, "", "")
call s:hi("markdownIdDeclaration", s:bcyan, "", "")
call s:hi("markdownH1", s:dcyan, "", "")
call s:hi("markdownLinkText", s:bblue, "", "NONE")
call s:hi("markdownUrl", s:bblue, "", "underline")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter markdownH1

call s:hi("perlPackageDecl", s:bcyan, "", "")

call s:hi("phpClasses", s:bcyan, "", "")
call s:hi("phpDocTags", s:bcyan, "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText", s:bcyan, "", "")
call s:hi("podVerbatimLine", "NONE", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:bcyan, "", "")
call s:hi("rubySymbol", s:bwhite, "", s:bold)
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("rustAttribute", s:bblue, "", "")
call s:hi("rustEnum", s:bcyan, "", s:bold)
call s:hi("rustMacro", s:dcyan, "", s:bold)
call s:hi("rustModPath", s:bcyan, "", "")
call s:hi("rustPanic", s:dpurple, "", s:bold)
call s:hi("rustTrait", s:bcyan, "", s:italic)
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:hi("sassClass", s:bcyan, "", "")
call s:hi("sassId", s:bcyan, "", s:underline)
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:bcyan, "", "")
call s:hi("vimMapRhs", s:bcyan, "", "")
call s:hi("vimNotation", s:bcyan, "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:bcyan, "", "")
call s:hi("xmlCdataStart", s:bblack, "", s:bold)
call s:hi("xmlNamespace", s:bcyan, "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:bcyan, "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:dyellow, "", "")
call s:hi("ALEErrorSign" , s:dred, "", "")
call s:hi("ALEWarning" , s:dyellow, "", "undercurl")
call s:hi("ALEError" , s:dred, "", "undercurl")

" Coc
" > neoclide/coc
call s:hi("CocWarningSign", s:dyellow, "", "")
call s:hi("CocErrorSign" , s:dred, "", "")
call s:hi("CocInfoSign" , s:dcyan, "", "")
call s:hi("CocHintSign" , s:bblue, "", "")

" Nvim LSP
" > neovim/nvim-lsp
call s:hi("LSPDiagnosticsWarning", s:dyellow, "", "")
call s:hi("LSPDiagnosticsError" , s:dred, "", "")
call s:hi("LSPDiagnosticsInformation" , s:dcyan, "", "")
call s:hi("LSPDiagnosticsHint" , s:bblue, "", "")


" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:dgreen, "", "")
call s:hi("GitGutterChange", s:dyellow, "", "")
call s:hi("GitGutterChangeDelete", s:dred, "", "")
call s:hi("GitGutterDelete", s:dred, "", "")

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd", s:dgreen, "", "")
call s:hi("SignifySignChange", s:dyellow, "", "")
call s:hi("SignifySignChangeDelete", s:dred, "", "")
call s:hi("SignifySignDelete", s:dred, "", "")

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:dred, "", "")
call s:hi("gitcommitUntrackedFile", s:dred, "", "")
call s:hi("gitcommitSelectedFile", s:dgreen, "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", "", s:bblack, "")
call s:hi("jediFat", s:dcyan, s:bblack, s:underline.s:bold)

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:bcyan, "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", "", s:dred, "")

" vim-signature
" > kshenoy/vim-signature
call s:hi("SignatureMarkText", s:dcyan, "", "")

" vim-startify
" > mhinz/vim-startify
call s:hi("StartifyFile", s:bwhite, "", "")
call s:hi("StartifyFooter", s:bcyan, "", "")
call s:hi("StartifyHeader", s:dcyan, "", "")
call s:hi("StartifyNumber", s:bcyan, "", "")
call s:hi("StartifyPath", s:dcyan, "", "")
hi! link StartifyBracket Delimiter
hi! link StartifySlash Normal
hi! link StartifySpecial Comment

"+--- Languages ---+
" Haskell
" > neovimhaskell/haskell-vim
call s:hi("haskellPreProc", s:bblue, "", "")
call s:hi("haskellType", s:bcyan, "", "")
hi! link haskellPragma haskellPreProc

" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:dcyan, "", s:italic)
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode", s:bcyan, "", "")
call s:hi("mkdFootnote", s:dcyan, "", "")
call s:hi("mkdRule", s:bblue, "", "")
call s:hi("mkdLineBreak", s:dpurple, "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:dcyan, "", s:bold)
  endfor
else
  let s:vimwiki_hcolor_guifg = [s:nord7_gui, s:nord8_gui, s:nord9_gui, s:nord10_gui, s:nord14_gui, s:nord15_gui]
  let s:vimwiki_hcolor_ctermfg = [s:bcyan, s:dcyan, s:dpurple, s:bblue, s:dgreen, s:dcyan]
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:vimwiki_hcolor_ctermfg[s:i-1], "", s:bold)
  endfor
endif

call s:hi("VimwikiLink", s:dcyan, "", s:underline)
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:bcyan, "", "")
