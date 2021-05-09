let s:isDark=0
function ToggleTheme()
   if s:isDark == 0
      let s:isDark=1
      colorscheme gruvbox
   else
      let s:isDark=0
      colorscheme rose-pine-dark
   endif
endfunction
nnoremap <Leader>da :call ToggleTheme()<CR>



if (has("nvim"))
   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
   set termguicolors
endif

function ToBgDark()
   set background=dark
endfunction
call ToBgDark()


augroup python
   autocmd!
   autocmd FileType python
      \   syn keyword pythonSelf self
      \ | highlight def link pythonSelf Special
augroup end


let g:coc_snippet_next = '<Tab>'


" Run file
let g:run_cmd_python = ['python3']
let g:run_auto_close = 0
let g:run_split = 'down'




let g:run_cmd_java = [
                \ 'javac',
                \ '-g:none',
                \ run#defaults#fullfilepath(),
                \ '&&',
                \ 'java',
                \ run#defaults#basefilename()
                \]


let g:run_cmd_cpp = [
                \ 'javac',
                \ '-g:none',
                \ run#defaults#fullfilepath(),
                \ '&&',
                \ 'java',
                \ run#defaults#basefilename()
                \ ]
