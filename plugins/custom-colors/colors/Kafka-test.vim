" Vim colorscheme
" An adaptation of the Slate theme included with vim
" Maintained by Peter van Peursem
"     Version 1.7 - 28-04-2016
"
" All color-values can be found with python script at:
" https://github.com/eikenb/terminal-colors
"

" --------------------------------
set background=dark
" --------------------------------

highlight clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name="Kafka"

" --------------------------------
" Editor settings
" --------------------------------
hi Normal                   guifg=#dadada     guibg=#2a303b         gui=NONE
hi Cursor                   guifg=#000000     guibg=#eeeeee         gui=NONE
hi CursorLine               guifg=NONE        guibg=#38404d         gui=NONE
hi LineNr                   guifg=#737373     guibg=NONE            gui=NONE
hi CursorLineNR             guifg=#fae3a0     guibg=NONE            gui=NONE

" -----------------
" - Number column -
" -----------------
hi CursorColumn             guifg=NONE        guibg=#909090     gui=NONE
hi FoldColumn               guifg=#a8a8a8     guibg=#4e4e4e     gui=NONE
hi SignColumn               guifg=#8a8a8a     guibg=NONE        gui=NONE
hi Folded                   guifg=#a8a8a8     guibg=#4e4e4e     gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit                guifg=#808080     guibg=#909090     gui=NONE
hi ColorColumn              guifg=NONE        guibg=#909090     gui=NONE
hi TabLine                  guifg=#8a8a8a     guibg=NONE        gui=NONE
hi TabLineFill              guifg=#4e4e4e     guibg=NONE        gui=NONE
hi TabLineSel               guifg=#5f8700     guibg=NONE        gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory                guifg=#73a5c8   guibg=NONE          gui=NONE
hi Search                   guifg=#303030   guibg=#fae3a0       gui=NONE
hi IncSearch                guifg=#262626   guibg=#ff8700       gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine               guifg=NONE        guibg=#909090     gui=NONE
hi StatusLineNC             guifg=NONE        guibg=#444444     gui=NONE
hi WildMenu                 guifg=#202020     guibg=#73a5c8     gui=NONE
hi Question                 guifg=#b6c2aa     guibg=NONE        gui=NONE
hi Title                    guifg=#fbc692     guibg=NONE        gui=NONE
hi ModeMsg                  guifg=#af8700     guibg=NONE        gui=NONE
hi MoreMsg                  guifg=#93a48e     guibg=NONE        gui=NONE

" --------------
" - Visual aid -
" --------------
hi MatchParen              guifg=#ffffff     guibg=#ff5f00     gui=NONE
hi Visual                  guifg=NONE        guibg=#005faf     gui=NONE
hi VisualNOS               guifg=#d14548     guibg=#005faf     gui=NONE
hi NonText                 guifg=#43788c     guibg=NONE        gui=NONE

hi Todo                    guifg=#0f829d     guibg=#f9bb80     gui=NONE
hi Underlined              guifg=#808080     guibg=NONE        gui=NONE
hi Error                   guifg=#fff0f0     guibg=#b91e2e     gui=NONE
hi ErrorMsg                guifg=#b91e2e     guibg=NONE        gui=NONE
hi WarningMsg              guifg=#b91e2e     guibg=NONE        gui=NONE
hi Ignore                  guifg=#808080     guibg=#005faf     gui=NONE
hi SpecialKey              guifg=#93a48e     guibg=NONE        gui=NONE

" --------------------------------
" Variable types
" --------------------------------
hi Constant                guifg=#af8700     guibg=NONE        gui=NONE
hi String                  guifg=#87af00     guibg=NONE        gui=NONE
hi StringDelimiter         guifg=#fff0f0     guibg=NONE        gui=NONE
hi Character               guifg=#5f8700     guibg=NONE        gui=NONE
hi Number                  guifg=#d78700     guibg=NONE        gui=NONE
hi Boolean                 guifg=#d78700     guibg=NONE        gui=NONE
hi Float                   guifg=#d78700     guibg=NONE        gui=NONE

hi Identifier              guifg=#d14548     guibg=NONE        gui=NONE
hi Function                guifg=#af8700     guibg=NONE        gui=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement               guifg=#5fafd7     guibg=NONE        gui=NONE
hi Label                   guifg=#00af00     guibg=NONE        gui=NONE
hi Operator                guifg=#d14548     guibg=NONE        gui=NONE
hi Keyword                 guifg=#5fafd7     guibg=NONE        gui=NONE
hi Exception               guifg=#5f87ff     guibg=NONE        gui=NONE
hi Comment                 guifg=#9e9e9e     guibg=NONE        gui=NONE

hi Special                 guifg=#af8700     guibg=NONE        gui=NONE
hi SpecialChar             guifg=#5fafd7     guibg=NONE        gui=NONE
hi Tag                     guifg=#5fafd7     guibg=NONE        gui=NONE
hi Delimiter               guifg=#0f829d     guibg=NONE        gui=NONE
hi SpecialComment          guifg=#9e9e9e     guibg=NONE        gui=NONE
hi Debug                   guifg=#ffd7ff     guibg=NONE        gui=NONE

" ----------
" - C like -
" ----------
hi PreProc                 guifg=#d14548     guibg=NONE        gui=NONE
hi Include                 guifg=#d14548     guibg=NONE        gui=NONE
hi Define                  guifg=#fbc692     guibg=NONE        gui=NONE
hi Macro                   guifg=#ff8700     guibg=NONE        gui=NONE
hi PreCondit               guifg=#0f829d     guibg=NONE        gui=NONE

hi Type                    guifg=#87afff     guibg=NONE        gui=NONE
hi StorageClass            guifg=#fae3a0     guibg=NONE        gui=NONE
hi Structure               guifg=#b6c2aa     guibg=NONE        gui=NONE
hi Typedef                 guifg=#87afff     guibg=NONE        gui=NONE

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd                 guifg=#00af00     guibg=NONE        gui=NONE
hi DiffChange              guifg=#d743da     guibg=NONE        gui=NONE
hi DiffDelete              guifg=#b91e2e     guibg=NONE        gui=NONE
hi DiffText                guifg=#ffffaf     guibg=NONE        gui=NONE
hi DiffAdded               guifg=#00af00     guibg=NONE        gui=NONE
hi DiffFile                guifg=#6193bc     guibg=NONE        gui=NONE
hi DiffNewFile             guifg=#00af00     guibg=NONE        gui=NONE
hi DiffLine                guifg=#ffffaf     guibg=NONE        gui=NONE
hi DiffRemoved             guifg=#b91e2e     guibg=NONE        gui=NONE
" -----------------
" Completion menu
" -----------------
hi Pmenu                   guifg=#202020     guibg=#e4e4e4     gui=NONE
hi PmenuSel                guifg=#202020     guibg=#73a5c8     gui=NONE
hi PmenuSbar               guifg=NONE        guibg=#fff0f0     gui=NONE
hi PmenuThumb              guifg=NONE        guibg=#909090     gui=NONE

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad                guifg=#ffffff     guibg=#870000     gui=NONE
hi SpellCap                guifg=#ffffff     guibg=#005faf     gui=NONE
hi SpellLocal              guifg=#ffffff     guibg=#8700d7     gui=NONE
hi SpellRare               guifg=#ffffff     guibg=#5fd7ff     gui=NONE

"--------------------------------------------------------------------
" Specific settings
"--------------------------------------------------------------------

" --------------------------------
" Git highlighting
" --------------------------------
hi gitCommitOverflow         guifg=#b91e2e     guibg=NONE        gui=NONE
hi gitCommitSummary          guifg=#73a5c8     guibg=NONE        gui=NONE

" --------------------------------
" git gutter
" --------------------------------
hi GitGutterAdd            guifg=#00af00     guibg=NONE        gui=NONE
hi GitGutterChange         guifg=#d743da     guibg=NONE        gui=NONE
hi GitGutterDelete         guifg=#b91e2e     guibg=NONE        gui=NONE
hi GitGutterChangeDelete         guifg=#87314e     guibg=NONE        gui=NONE

" --------------------------------
" C highlighting
" --------------------------------
hi cOperator               guifg=#87afff     guibg=NONE        gui=NONE
hi cPreCondit              guifg=#5fafd7     guibg=NONE        gui=NONE

" --------------------------------
" HTML highlighting
" --------------------------------
hi htmlBold                guifg=#fbe8af     guibg=NONE        gui=NONE
hi htmlItalic              guifg=#5fafd7     guibg=NONE        gui=NONE
hi htmlEndTag              guifg=#fff0f0     guibg=NONE        gui=NONE
hi htmlTag                 guifg=#fff0f0     guibg=NONE        gui=NONE

" --------------------------------
" JavaScript highlighting
" --------------------------------

" --------------------------------
" CSS highlighting
" --------------------------------
hi cssBraces              guifg=#fff0f0     guibg=NONE        gui=NONE
hi cssClassName           guifg=#5fafd7     guibg=NONE        gui=NONE
hi cssColor               guifg=#87afff     guibg=NONE        gui=NONE

" --------------------------------
" Markdown highlighting
" --------------------------------
hi markdownBold                    guifg=#d7af00     guibg=NONE        gui=NONE
hi markdownItalic                  guifg=#d7af00     guibg=NONE        gui=NONE
hi markdownBoldItalic              guifg=#d7af00     guibg=NONE        gui=NONE
hi markdownCode                    guifg=#73a5c8     guibg=NONE        gui=NONE
hi markdownError                   guifg=#d14548     guibg=NONE        gui=NONE
hi markdownCodeBlock               guifg=#73a5c8     guibg=NONE        gui=NONE
hi markdownFencedCodeBlock         guifg=#73a5c8     guibg=NONE        gui=NONE
hi markdownInlineCode              guifg=#73a5c8     guibg=NONE        gui=NONE
hi markdownHeadingDelimiter        guifg=#875f00     guibg=NONE        gui=NONE

" --------------------------
" Ruby highlighting
" --------------------------
hi rubyAttribute                    guifg=#ffffaf     guibg=NONE        gui=NONE
hi rubyConstant                     guifg=#87afff     guibg=NONE        gui=NONE
hi rubyRegexp                       guifg=#87a2b1     guibg=NONE        gui=NONE
hi rubySymbol                       guifg=#fbe8af     guibg=NONE        gui=NONE
hi rubyInterpolation                guifg=#73a5c8     guibg=NONE        gui=NONE
hi rubyStringDelimiter              guifg=#fbe8af     guibg=NONE        gui=NONE
hi rubyInterpolationDelimiter         guifg=#5fafd7     guibg=NONE        gui=NONE

" --------------------------------
" NERDTree highlighting
" --------------------------------
hi NERDTreeDirSlash          guifg=#73a5c8     guibg=NONE        gui=NONE
hi NERDTreeExecFile          guifg=#d14548     guibg=NONE        gui=NONE
