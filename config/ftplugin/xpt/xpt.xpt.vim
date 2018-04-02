XPTemplate priority=personal

let s:f = g:XPTfuncs()

XPTinclude
    \_common/common
    \ vim/vim

XPTinclude
      \ _common/common

XPT cur
\`cursor\^`cursor^

XPT var
\``var^\^

XPT it alias=var

XPT repeat
\`...\^
`cursor^
\`...\^

XPT repeat2
\``name^...\^
`cursor^
\``name^...\^

XPT repeatexp
\`expand...{{
\`...{{\^
- repeat this
\`...\^
\`}}\^
\`}}\^

