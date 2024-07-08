" " Command for latexmk. 
" let s:latexmk = "latexmk -pdf -output-directory=%:h %"
" " Command for pdflatex.
" let s:pdflatex = "pdflatex -file-line-error -halt-on-error -interaction=nonstopmode -synctex=1 -output-directory=%:h %"
" 
" let &l:makeprg = expand(s:latexmk)
" 
" " Call the VimTex function to set makeprg.
" call s:TexSetMakePrg()
