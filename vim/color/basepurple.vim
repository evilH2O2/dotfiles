hi clear

if exists("syntax_on")
	syntax reset
endif

set t_Co=256 " 
set background=dark

let g:colors_name = "basepurple"

"--------------------------------
"- cterm -
"--------------------------------


function! CtermConfig(group, sylte, fg, bg)
	let val = 'hi ' . a:group . ' cterm=' . a:sylte . ' ctermfg=' . a:fg . ' ctermbg=' . a:bg
	execute val
endfunction


call CtermConfig('Normal','none',141,'none')  
call CtermConfig('LineNr', 'none', 204, 'none') 
call CtermConfig('CursorLineNR', 'none', 255, 'none') 
" call CtermConfig('Cursor', 'none', 11, 52)
call CtermConfig('CursorLine', 'underline', 'none', 'none') 


call CtermConfig('IncSearch', 'none', 0, 45) 
call CtermConfig('Search', 'none', 0, 158) 
call CtermConfig('Directory', 'bold', 18, 'none')

call CtermConfig('CursorColumn', 'none', 21, 243)
call CtermConfig('ColorColumn', 'none', 21, 243)
call CtermConfig('VertSplit', 'none', 48, 66)
call CtermConfig("TabLine", 'none', 79,245) 
call CtermConfig("TabLineSel", 'underline', 84,237) 
call CtermConfig("TabLineFill", 'none', 'none', 238) 


" call CtermConfig('StatusLine', 'none', 'none', 'none')
call CtermConfig('WildMenu', 'none', 207, 235) 
call CtermConfig('Question', 'none', 197, 'none') 
call CtermConfig('Title', 'none', 122, 'none') 
call CtermConfig('ModeMsg', 'bold', 162, 'none') 
call CtermConfig('MoreMsg', 'bold', 156, 'none') 

call CtermConfig('MatchParen', 'none', 0, 123)  
call CtermConfig('Visual', 'none', 233, 105)
call CtermConfig('VisualNOS', 'none', 233, 105) 
call CtermConfig('NonText', 'none', 159, 'none') 
call CtermConfig('Todo', 'none', 147, 151)
call CtermConfig('Underline', 'underline', 147, 87) 
call CtermConfig('Error', 'none', 67, 65)
call CtermConfig('ErrorMsg', 'none', 38, 225)
call CtermConfig('WarningMsg', 'none', 52, 231)
call CtermConfig('SpecialKey', 'none', 200, 'none') 


call CtermConfig('Constant', 'none', 159, 'none') 
call CtermConfig('String', 'none', 50, 'none')
call CtermConfig('StringDelimiter', 'none', 200, 'none')
call CtermConfig('Character', 'none', 74, 'none')
call CtermConfig('Number', 'none', 153, 'none')
call CtermConfig('Boolean', 'none', 134, 'none')
call CtermConfig('Float', 'none', 153, 'none') 
call CtermConfig('Identifier', 'none', 67, 'none') 
call CtermConfig('Function', 'bold', 147, 'none') 



call CtermConfig('Statement', 'none', 198, 'none') 
call CtermConfig('Conditional', 'none', 201, 'none')
call CtermConfig('Repeat', 'none', 199, 'none')
call CtermConfig('Label', 'none', 197, 'none')
call CtermConfig('Operator', 'none', 203, 'none') 
call CtermConfig('Keyword', 'none', 219, 'none')
call CtermConfig('Exception', 'none', 171, 'none') 
call CtermConfig('Comment', 'none', 245, 'none')
call CtermConfig('Special', 'none', 217, 'none') 
call CtermConfig('Tag', 'none', 153, 'none')
call CtermConfig('Delimiter', 'none', 189, 'none')


call CtermConfig('PreProc', 'none', 45, 'none')
call CtermConfig('Include', 'none', 45, 'none')
call CtermConfig('Define', 'none', 45, 'none')
call CtermConfig('PreCondit',  'none', 171, 'none')
call CtermConfig('Type', 'none', 79, 'none') "python 
call CtermConfig('StorageClass', 'none', '207', 'none')
call CtermConfig('Typedef', 'none', 123, 'none')


call CtermConfig('DiffText', 'none', 'none', 52)
call CtermConfig('DiffDelete', 'none', 'none', 235)
call CtermConfig('DiffChange', 'none', 'none', 52)
call CtermConfig('DiffAdd', 'none', 'none', 41)


call CtermConfig('PMenu','none',233, 72) 
call CtermConfig('PMenuSel','none',233, 117) 
call CtermConfig('PMenuSbar', 'none', 233, 72)
call CtermConfig('PMenuThumb', 'none', 233, 80)


call CtermConfig('SpellBad', 'none', 'none', 52) 
call CtermConfig('SpellCap', 'none', 'none', 52) 
call CtermConfig('SpellLocal', 'none', 'none', 52) 
call CtermConfig('SpellRare', 'none', 'none', 52) 
