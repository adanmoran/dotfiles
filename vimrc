"""""""""""""""""""" Setup """"""""""""""""""""
" Required to hide garbage characters in NVIM/Tmux
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
" Needed for Vundles
set shell=/bin/bash

" Used for host detection
let hostname = substitute(system('hostname'), '\n', '', '')
let hostos = substitute(system('uname -o'), '\n', '', '')

let domain='roberto'
" echo 'Using domain ' . domain

let is_win=0
let is_mac=0
let is_nix=0
if has('win32')||has('win32unix')
	let is_win=1
elseif has('mac')
	let is_mac=1
else
	let is_nix=1
endif


" Configure some unconventional filetypes
au BufNewFile,BufRead *.html.base      set filetype=html
au BufNewFile,BufRead *.ftn90          set filetype=fortran
au BufNewFile,BufRead *.cdk*           set filetype=fortran
au BufNewFile,BufRead *.module         set filetype=php
au BufNewFile,BufRead *.dot            set filetype=sh
au BufNewFile,BufRead *.gs             set filetype=javascript
au BufNewFile,BufRead *.spi            set filetype=tcl
au BufNewFile,BufRead .exper_cour      set filetype=sh
au BufNewFile,BufRead *.lcm            set filetype=c
au BufNewFile,BufRead Common_Compiler* set filetype=sh
au BufNewFile,BufRead */Wt/W*          set filetype=cpp
au BufNewFile,BufRead *recettes        set filetype=make
au BufNewFile,BufRead *cibles          set filetype=make

set nocompatible             " be iMproved, required
filetype off                 " required

"""""""""""""""""""" /Setup """"""""""""""""""""

"""""""""""""""""""" Plugins """"""""""""""""""""
call plug#begin('~/dotfiles/bundles')


if is_win==0
"---------- Airline ----------"
	" Plugin to improve vim's status line by making it colourize,
	" show the file you're in, display the mode, etc...
	Plug 'vim-airline/vim-airline'
"---------- /Airline ----------"

"---------- Colour Scheme Plugins ----------"
	" Solarized colour scheme
	Plug 'altercation/vim-colors-solarized'

	" Typescript syntax colouring for vim
	Plug 'leafgarland/typescript-vim'

	" Completion and semantic error checking for Angular Components
	Plug 'Quramy/ng-tsserver'

	" Atelier color scheme
	Plug 'atelierbram/vim-colors_atelier-schemes'
	" base16-atelierforest base16-atelierplateau base16-atelierheath base16-ateliercave base16-ateliersulphurpool base16-atelierlakeside base16-ateliersavanna base16-atelierseaside base16-atelierdune base16-atelierestuary

	" Duotones
	Plug 'atelierbram/vim-colors_duotones'

	" Full of colour schemes:
	Plug 'flazz/vim-colorschemes'
	" Tomorrow Tomorrow-Night Tomorrow-Night-Eighties Tomorrow-Night-Bright Tomorrow-Night-Blue SlateDark PapayaWhip MountainDew Monokai Monokai-chris DevC++ c colorscheme_template colorful colorful256 colorer coldgreen coffee codeschool CodeFactoryv3 codeburn codeblocks_dark cobalt cobaltish clue cloudy clearance cleanroom cleanphp clarity ciscoacl chrysoprase chocolate ChocolatePapaya ChocolateLiquor chlordane chela_light Chasing_Logic charon charged-256 chance-of-storm cascadia carvedwood carvedwoodcool carrot caramel candy candyman candycode campfire camo calmar256-light cake16 C64 bw bvemu buttercream busybee busierbee burnttoast256 bubblegum brown brookstream breeze borland bog bocau bmichaelsen blugrine bluez blue blueshift blueprint bluegreen bluedrake bluechia blink blazer BlackSea blacklight blackdust blackboard blackbeauty black_angus biogoo billw bensday beauty256 beachcomber bclear bayQua baycomb basic base16-atelierdune badwolf babymate256 autumn autumnleaf automation atom asu1dark astronaut asmanian_blood ashen aqua apprentice ansi_blows anotherdark aiseered af advantage adrian adobe adaryn adam abra 3dglasses 256-jungle 256-grayvim 0x7A69_dark heliotrope habiLight h80 guepardo guardian gruvbox grishin greyblue grey2 greenvision greens grb256 graywh gravity grape gothic gotham gotham256 gor google golden golded gobo github getfresh getafe gentooish gemcolors gardener fu fruity fruit fruidle frood freya forneus fokus fog fnaqevan flatui flattr flatland flatlandia flatcolor fine_blue felipec far evening_2 enzyme emacs elrodeo elisex elise elda.vim* ekvoli ekinivim ego edo_sea editplus ecostation eclm_wombat eclipse earth earthburn earendel dusk dull dual doriath doorhinge donbass django distinguished disciple developer deveiate devbox-dark-256 detailed desert desertEx desertedocean desertedoceanburnt desert256 desert256v2 derefined denim delphi delek dawn darth darkZ darkzen darktango darkspectrum darkslategray dark-ruby darkroom darkrobot darkocean darker-robin darkerdesert darkeclipse darkdot darkburn darkbone darkBlue darkblue2 darkblack dante d8g_04 d8g_03 d8g_02 d8g_01 custom cthulhian corporation corn cool contrasty colorzone navajo-night nature native mustang muon mud mrpink mrkn256 motus moss moria mopkai mophiaSmoke mophiaDark montz monokain molokai mod_tcsoft mizore mint miko midnight midnight2 metacosm mellow mdark mayansmoke matrix martin_krischik mars maroloccio marklar manxome manuscript mango made_of_code mac_classic luna luinnar lucius louver lodestone lizard lizard256 literal_tango liquidcarbon lingodirector lilypink lilydjwg_green lilydjwg_dark lilac lightcolors leya lettuce less leo leglight2 legiblelight lazarus last256 landscape kyle kruby kolor kkruby kiss kib_plastic kib_darktango khaki kellys kate kalt kaltex kalisi jiks jhlight jhdark jellyx jellybeans jelleybeans jammy ironman ir_black inkpot ingretu industry industrial impact impactG iceberg icansee ibmedit iangenzo hybrid hybrid-light hornet holokai herokudoc herokudoc-gvim herald hemisu softblue softbluev2 smyck smp skittles_dark skittles_berry simplewhite simple_b simpleandfriendly simple256 silent sift sienna shobogenzo shadesofamber sf sexy-railscasts settlemyer seoul seoul256 seoul256-light selenitic sea seashell sean scite scala saturn satori sand rtl rootwater robinhood revolutions reloaded reliable relaxedgreen refactor redstring redblack rdark rdark-terminal rcg_term rcg_gui rastafari random rainbow_neon rainbow_fruit rainbow_fine_blue railscasts radicalgoodspeed quagmire python pyte pw putty psql pspad proton professional prmths print_bw potts pleasant playroom pink pic phpx phphaxor phd pf_earth perfect peppers pencil peaksea paintbox pacific otaku osx_like orange olive oceanlight oceandeep oceanblack oceanblack256 obsidian obsidian2 nuvola nour norwaytoday northsky northland no_quarter nightwish nightVision night_vision night nightsky nightshimmer nightflight nightflight2 nicotine newsprint newspaper nevfn neverness neverland neverland-darker neverland2 neverland2-darker neutron nerv-ous neon nefertiti nedit nedit2 nazca navajo zmrok zephyr zen zenesque zenburn zazen yeller yaml xterm16 xoria256 xmaslights xian xemacs wuye wood wombat wombat256 wombat256mod wombat256i winter wintersday win9xblueback widower whitedust whitebox watermark warm_grey wargrey vylight vydark void vj vividchalk visualstudio vilight vibrantink vexorian vc vcbc vanzan_color up underwater underwater-mod understated umber-green ubloh two2tango twitchy twilight twilight256 tutticolori turbo trogdor trivial256 transparent torte toothpik tony_light tomatosoup tolerable tir_black tidy tibet thor thestars thegoodluck textmate16 tetragrammaton tesla telstar tcsoft tchaba tchaba2 taqua tangoX tango tangoshady tango-morning tango-desert tango2 tabula synic symfony swamplight surveyor summerfruit summerfruit256 strawimodo strange stingray stackoverflow spring spiderhawk spectro southwest-fog southernlights soso sorcerer sonoma sonofobsidian sol sol-term solarized softlight
	"
	" One-dark
	Plug 'joshdick/onedark.vim'

"---------- /Colour Scheme Plugins ----------"

"---------- CSApprox ----------"
	if !has('gui_running')
		" Plugin to get gvim colourschemes work better in terminal vim
		Plug 'godlygeek/csapprox'
	endif
"---------- /CSApprox ----------"

"---------- Doxygen ----------"
" Generate doxygen comments for C/C++ files using :Dox
	Plug 'vim-scripts/DoxygenToolkit.vim'
"---------- /Doxygen ----------"

"---------- EasyMotion ----------"
	" Type e.g <Leader><Leader> then any standard vim command you want. It'll
	" highlight all the things you can jump to. 
	" e.g. <L><L>w highlights all words so you can jump to them by typing the
	" highlighted letter
	Plug 'easymotion/vim-easymotion'
"---------- /EasyMotion ----------"

"---------- Eunuch ----------"
	" Vim sugar for the UNIX shell commands that need it the most. Features include:
	" :Remove: Delete a buffer and the file on disk simultaneously.
	" :Unlink: Like :Remove, but keeps the now empty buffer.
	" :Move:   Rename a buffer and the file on disk simultaneously.
	" :Rename: Like :Move, but relative to the current file's containing directory.
	" :Chmod:  Change the permissions of the current file.
	" :Mkdir:  Create a directory, defaulting to the parent of the current file.
	" :Find:   Run find and load the results into the quickfix list.
	" :Locate: Run locate and load the results into the quickfix list.
	" :Wall:   Write every open window. Handy for kicking off tools like guard.
	" :SudoWrite: Write a privileged file with sudo.
	" :SudoEdit:  Edit a privileged file with sudo.
	Plug 'tpope/vim-eunuch'
"---------- /Eunuch ----------"

"---------- fugitive - a Git wrapper for vim ----------"
"Also allows current git branch to be shown by vim-airline:
" Use :Gstatus to see current status window
" When in status, press P to stage hunks on that file 
" When in status, press - to stage a file you've highlighted
" When in status, press cvc to commit the changes
" Use :Gpush to push commits
" Use :Glog to see log messages
	Plug 'tpope/vim-fugitive'
	set diffopt+=vertical
"---------- /fugitive ----------"

"---------- FZF - The Fuzzy Searcher ----------"
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
"---------- /FZF ----------"

"---------- gitgutter ----------"
" Shows [git] status of each line in a file
" Toggle with :GitGutterToggle
	Plug 'airblade/vim-gitgutter'
"---------- /gitgutter ----------"

"---------- JavaScript ----------"
   " Improved indentation, highlighting, etc
	Plug 'pangloss/vim-javascript'

	" General conceal settings. Will keep things concealed
	" even when your cursor is on top of them.
	"	Plug 'Wolfy87/vim-syntax-expand'
	"	set conceallevel=1
	"	set concealcursor=nvic

	" vim-javascript conceal settings.
	"	let g:javascript_conceal_function = "λ"
	"	let g:javascript_conceal_this = "@"
	"	let g:javascript_conceal_return = "<"
	"	let g:javascript_conceal_prototype = "#"
"---------- /JavaScript ----------"

"---------- LaTeX plugins ----------"
	 Plug 'lervag/vimtex' " Tex Compiler
	 Plug 'KeitaNakamura/tex-conceal.vim' " show greek letters in LaTeX 
"---------- /LateX plugins ----------"

"---------- NCM2 Completion Manager ----------"
	" NCM Completion manager
	Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2'
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'
	Plug 'ncm2/ncm2-ultisnips'
"---------- /NCM2 ----------"

"---------- NERD Tree - file explorer for vim ---------"
	Plug 'scrooloose/nerdtree'
"---------- /NERD Tree ---------"

"---------- Markers ----------"
	" Show markers and allow for custom, non-alphabet markers
	" Also provides tools to simplify marker generation and
	" for jumping to/from markers
	Plug 'kshenoy/vim-signature'
"---------- /Markers ----------"

"---------- Powerline Status Bar ----------"
	" Status bar
	Plug 'powerline/powerline'
"---------- /Powerline ----------"

"---------- PythonSyntax ----------"
	" Python Syntax highlighting (the default is pretty bad)
	Plug 'Hdima/python-syntax'
"---------- PythonSyntax ----------"

"---------- Rainbow ----------"
	" Colour-code matching braces and environments
	" to make it easier to see which braces match up
	" and which don't
	Plug 'luochen1990/rainbow'
	let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"---------- /Rainbow ----------"

"---------- RTags ----------"
	" A Plug to use rtags in vim. (rtags allows for code following,
	" some refactoring, etc.)
	" Ensure to run the following in the build directory that uses rtags
	"    cmake . -DCMAKE_EXPORT_COMPILE_COMMANDS=1
	"    rc -J .
	" And have the rdm service running somewhere in the background.
	Plug 'lyuts/vim-rtags'
"---------- /RTags ----------"

"---------- Startify ----------"
	" Add a nice starting page to vim where you can open
	" previously used buffers
	Plug 'mhinz/vim-startify'
"---------- /Startify ----------"

"---------- Tabular ----------"
	" Align multiple lines based on =, :, etc using
	" :Tab/=, :Tab/:, :Tab/|, etc
	Plug 'godlygeek/tabular'
"---------- /Tabular ----------"

"---------- tagbar ----------"
	" Allows browsing tags of the current source file
	" from ctags. Good for seeing functions, variables, etc.
	Plug 'majutsushi/tagbar'
	" Key mappings for clang-format, to format source code:
	map <leader>f :pyf /usr/share/vim/addons/syntax/clang-format-3.8.py<CR>
"---------- /tagbar ----------"

"---------- tcomment ----------"
	" Plug to assist with commenting out blocks of text.
	" Use gc<Count>c{motion} to comment out those lines, or gcc for this line.
	Plug 'tomtom/tcomment_vim'
"---------- /tcomment ----------"

"---------- Ultisnips ----------"
	" Track the ultisnips engine.
	Plug 'SirVer/ultisnips'

	" Snippets are separated from the engine. Add this if you want them:
	Plug 'honza/vim-snippets'
"---------- /Ultisnips ----------"

"---------- VCEH - Better C++ Syntax Highlighting ---------"
	Plug 'octol/vim-cpp-enhanced-highlight'
"---------- /VCEH ----------"

"---------- VimFontsize ----------"
	" Manage font size
	Plug 'drmikehenry/vim-fontsize'
"---------- /VimFontsize ----------"

"---------- VimGrepper ----------"
	" Plug to wrap all the various grep tools, and provide
	" some more advanced search functionality
	Plug 'mhinz/vim-grepper'
"---------- /VimGrepper ----------"

"---------- VimObsession ----------"
	" Handle auto-calling mksession
	" Type :Obsess to start recording (and it will save this session)
	" Type :Obsess! to stop recording
	Plug 'tpope/vim-obsession'
"---------- /VimObsession ----------"

"---------- YouCompleteMe - Autocompletion C++ ----------"
"	Plug 'Valloric/YouCompleteMe'
"
"	" YCMGenerator - generates configs for YouCompleteMe
"	Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
"---------- /YouCompleteMe ----------"

endif "is_win == 0

" All of your Plugins must be added before the following line
call plug#end()          " required
"""""""""""""""""""" /Plugins """"""""""""""""""""

"""""""""""""""""""" Pre-Plug Vim Remappings """"""""""""""""""""
" Map things here that may be remapped conditionally in the plugins
" Un-indent current line by one tab stop
" Note: NCM2 remaps this to scroll through the menu if the 
" popup is visible
imap <S-Tab> <C-o><<
" Replace highlighted content with content of register 0
" Note: NCM2 remaps C-p to scroll through the menu
noremap <C-p> ciw<Esc>"0p


"""""""""""""""""""" /Pre-Plug Vim Remappings """"""""""""""""""""

""""""""""""""""""""" Airline Config """"""""""""""""""""""
"
" See :help airline for configuration options
"

" For vim-airline, ensure the status line is always displayed:
set laststatus=2

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Enable modified detection
let g:airline_detect_modified	= 1

"
"Check whitespace
"
let g:airline#extensions#whitespace#enabled = 1
" Certain number of spaces are allowed after a tab (so, /**\n* comments can work
let g:airline#extensions#whitespace#mixed_indent_algo = 2
" Choose which whitespace checks to enable
let g:airline#extensions#whitespace#checks = [ 'indent', 'mixed-indent-file' ]
" Configure the formatting of the warning message
let g:airline#extensions#whitespace#trailing_format = 'trail[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'mix-idt[%s]'
let g:airline#extensions#whitespace#long_format = 'l[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mix-idt-file[%s]'

" Show all current open buffers
let g:airline#extensions#tabline#enabled = 1
"""""""""""""""""""" /Airline Config """"""""""""""""""""""

"""""""""""""""""""" Colour Scheme """""""""""""""""""" 
" Random Colorscheme
" TODO Add 'go to last colorschem'
" TODO Add 'mark as terrible colorscheme'
" TODO Add 'mark as good colorscheme'
function! s:RandColorScheme()
	if filereadable("/usr/bin/php")
		let s:scheme=system('/usr/bin/env php ~/dotfiles/grabRandomColorscheme.php')
		execute ':colorscheme '.s:scheme
		if has('gui_running')
			echom 'Loading colorscheme ' s:scheme
		endif
	endif
endfunction
:map <Leader>rcs :call <SID>RandColorScheme()<CR>

" Grab a random whitelisted colour scheme
function! s:RandWhiteListColorScheme()
	if filereadable("/usr/bin/php")
		let s:scheme=system('/usr/bin/env php ~/dotfiles/grabRandomColorscheme.php -w')
		execute ':colorscheme '.s:scheme
		echom 'Loading whitelist colorscheme ' s:scheme
	endif
endfunction
:map <Leader>wcs :call <SID>RandWhiteListColorScheme()<CR>

" Execute PHP lines http://stackoverflow.com/a/5622258/1861346
":autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>

if has('gui_running')
	set mousemodel=popup
	set nomousehide

	" TODO Write a command to toggle this
	"set background=light
	set background=dark
endif

" Set my colour scheme to dark mode
	colorscheme onedark
	"	call <SID>RandColorScheme()

" OS Detection
if is_win
	behave xterm
	set ffs=unix
	set backspace=2
endif
"""""""""""""""""""" /Colour Scheme """"""""""""""""""""

"""""""""""""""""""" ctags """""""""""""""""""""""
if is_win == 0
	" A key map to run ctags:
	nnoremap <leader>ct :!ctags .<CR>
endif
" For vim-cpp-enhanced-highlight, turn on highlighting of class scope:
let g:cpp_class_scope_highlight = 1

" Tell vim to look for a tags file in the current
" directory, and all the way up until it finds one:
set tags=./tags;/


"""""""""""""""""""" /ctags """"""""""""""""""""""

"""""""""""""""""""" fugitive """"""""""""""""""""
" Map  shortcut to open status pane for staging hunks
noremap <leader>gst :Gstatus<CR>

"""""""""""""""""""" /fugitive """"""""""""""""""""

"""""""""""""""""""" fzf """"""""""""""""""""
" Set up keyboard shortbuts for fzf, the fuzzy finder
" This one searches all the files in the current git repo:
noremap <c-k> :GitFiles<CR>
" Use this to automatically search through all open buffers
noremap <leader><Tab> :Buffers<CR>
" Use this to search through all open files in the local folder
noremap <Leader>zf :Files<CR>
" Use this to search through all files in the local folder indexed by FZF
noremap <Leader>zF :FZF /home/$USER<CR>

" Unmap center/<CR> from launching fzf which appears to be mapped by default.
" unmap <CR>

"""""""""""""""""""" /fzf """"""""""""""""""""

""""""""""""""""""""" Git-Gutter """"""""""""""""""""""""
" Map travelling between hunks, which is usually allocated to [c and ]c
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
" stage the hunk with <Leader>hs or
" revert it with <Leader>hr.

" Set the update time for vim to 1 second instead of 4, so that every second the 
" git gutter updates with new signs telling you what's been changed.
set updatetime=1000

" It appears I have to double toggle it to get git gutter to work
"GitGutterToggle
"GitGutterToggle
""""""""""""""""""""" /Git-Gutter """"""""""""""""""""""""

""""""""""""""""""""""" Grepper """"""""""""""""""""""""""
" Grepper key bindings:
" Define an operator that takes any motion and
" uses it to populate the search prompt:
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Have git grep perform searches throughout the whole repo
" regardless of the directory we are currently in:
let g:grepper     = {
	\ 'open':    1,
	\ 'jump':    0,
	\ 'switch':  1,
	\ 'git':     { 'grepprg': 'git grep -nI $* -- `git rev-parse --show-toplevel`'},
   \ }

""""""""""""""""""""""" /Grepper """""""""""""""""""""""""

"""""""""""""""""""" LaTeX Config """"""""""""""""""""  
" vimtex Usage:
" <leader>ll = start compilation in continuous mode (saving updates pdf)
" <leader>lc = clean (lC = clean full)
" <leader>lv = go to pdf
" <leader>le = look at log

" Options for vimtex
 let g:tex_flavor = 'latex' " guarantee you're in latex mode, not plaintex mode
 let g:vimtex_enabled = 1 " enable/disable vimtex
 let g:vimtex_compiler_enabled = 1 " enable/disable the vimtex compiler interface
 let g:vimtex_compiler_method = 'latexmk' " set the compiler method
 let g:vimtex_compiler_progname = 'nvr' " use neovim-remote for reverse search
 let g:vimtex_quickfix_autoclose_after_keystrokes = 1 " close the quickfix window if you type

 " This command changes the log parser to use pplatex, which will display the
 " correct file for common warnings (such as Overfull hbox, etc) but incorrect
 " locations for undefined references, etc. 
 " I suggest switching between the two when necessary; stick with the standard
 " one for the most part, then when you want to get rid of Overfull/Underfull
 " box warnings you can switch to pplatex and recompile to see new results.
" let g:vimtex_quickfix_method = 'pplatex' " use pplatex to parse the log

 " Zathura Usage:
 " j,k = scroll
 " gg/G = scroll to top/bottom
 " / = search
 " <CTRL>j,k = scroll page
 " s = view full width 
 " a = view full height
 " <CTRL>LeftClick = go to that location in neovim
 " other usages TBD 
 if executable('zathura')
	 let g:vimtex_view_method = 'zathura'
 endif
 " used for greek letters in Vim when you're not highlighting the line
 set conceallevel=2 " if this is 1, it always conceals. 2 only when off the line
 " Conceal the following:
 " a = accents/ligatures
 " b = bold and italic
 " d = delimiters (e.g. $ or \(, etc)
 " m = math symbols
 " g = Greek letters
 " s = superscripts and subscripts
 let g:tex_conceal = "abgms"
 " Specify that latexmk should build to a subfolder called build relative to 
 " the main tex file
 let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \}

" Specify that the main file be 'main' for multi-file projects
au BufReadPre *.tex let b:vimtex_main = 'main.tex'
" Force hard linewrapping at 80 chars (rather than visual only) for tex files
au Filetype *.tex setlocal textwidth=80

" Function which will allow you to reformat paragraphs in latex
" as seen on
" tex.stackexchange.com/questions/1548/intelligent-paragraph-reflowing-in-vim
"function! TeX_fmt()
"	if (getline(".") != "")
"		let save_cursor = getpos(".")
"		let op_wrapscan = &wrapscan
"		set nowrapscan
"		let par_begin = '^\(%D\)\=\s*\($\|\\label\|\\begin\|\\end\|\\[\|\\]\|\\\(sub\)*section\>\|\\item\>\|\\NC\>\|\\blank\>\|\\noindent\>\)'
"		let par_end = '^\(%D\)\=\s*\($\|\\begin\|\\end\|\\[\|\\]\|\\\(sub\)*section\>\|\\item\>\|\\NC\>\|\\blank\>\)'
"		try
"			exe '?'.par_begin.'?+'
"		catch /E384/
"			1
"		endtry
"		norm V
"		try
"			exe '/'.par_end.'/-'
"		catch /E385/
"			$
"		endtry
"		norm gq
"		let &wrapscan = op_wrapscan
"		call setpos('.',save_cursor)
"	endif
"endfun
"nmap Q :call TeX_fmt()<CR>

" NCM completion for LaTeX
au User Ncm2Plugin call ncm2#register_source({
            \ 'name' : 'vimtex',
            \ 'priority': 1,
            \ 'subscope_enable': 1,
            \ 'complete_length': 1,
            \ 'scope': ['tex'],
            \ 'matcher': {'name': 'combine',
            \           'matchers': [
            \               {'name': 'abbrfuzzy', 'key': 'menu'},
            \               {'name': 'prefix', 'key': 'word'},
            \           ]},
            \ 'mark': 'tex',
            \ 'word_pattern': '\w+',
            \ 'complete_pattern': g:vimtex#re#ncm,
            \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
            \ })
"""""""""""""""""""" /LaTeX Config """"""""""""""""""""  

"""""""""""""""""""" NCM2 """"""""""""""""""""
" Enable NCM2
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: Required by NCM2 (see :help Ncm2PopupOpen)
set completeopt=noinsert,menuone,noselect
" Hide ---INSERT --- 
set noshowmode
" Enable <TAB> and <SHIFT-TAB> to cycle through the popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"""""""""""""""""""" /NCM2 """"""""""""""""""""

""""""""""""""""""""" NERDTree """"""""""""""""""""""
" Shortcut key to open NERDTree:
map <F5> :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
nnoremap <leader>n :NERDTree .<CR>
"""""""""""""""""""" /NERDTree """"""""""""""""""""""

"""""""""""""" python-syntax """""""""""""""""
" No options yet..
""""""""""""" /python-syntax """""""""""""""""

"""""""""""""""" Rainbow (foldering) """""""""""""""""""
	let g:rainbow_conf = {
	\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\   'operators': '_,_',
	\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\   'separately': {
	\	   '*': {},
	\	   'tex': {
	\		   'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\	   },
	\	   'lisp': {
	\		   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\	   },
	\	   'vim': {
	\		   'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\	   },
	\	   'html': {
	\		   'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\	   },
	\	   'css': 0,
	\   }
	\}
"""""""""""""""" /Rainbow (foldering) """""""""""""""""""

""""""""""""""""""""" Tagbar Config """"""""""""""""""""""
" tagbar config. Enable it using this key map:
nmap <F8> :TagbarToggle<CR>
"""""""""""""""""""" /Tagbar Config """"""""""""""""""""""

"""""""""""""""""""" Ultisnips config """"""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
if is_win==0
	let g:UltiSnipsExpandTrigger='<c-j>'
	let g:UltiSnipsJumpForwardTrigger='<c-j>'
	let g:UltiSnipsJumpBackwardTrigger='<c-n>'

	" If you want :UltiSnipsEdit to split your window.
	let g:UltiSnipsEditSplit='vertical'

	" Add to the runtime path so that custom
	" snippets can be found:
	set rtp+=~/dotfiles

"TODO: Determine what this was for and if we still need it
	augroup neptec-ultisnips
		au!
		autocmd BufRead */3dri/* :set rtp+=~/workspace/ScriptsAndTools
	augroup end

endif
""""""""""""""""""" /Ultisnips config """"""""""""""""""""""

"""""""""""""""" Wipeout """""""""""""""""""
" Source: http://stackoverflow.com/a/1536094/1861346
" @breif Remove all buffers not currently being displayed

function! Wipeout()
	" list of *all* buffer numbers
	let l:buffers = range(1, bufnr('$'))

	" what tab page are we in?
	let l:currentTab = tabpagenr()
	try
		" go through all tab pages
		let l:tab = 0
		while l:tab < tabpagenr('$')
			let l:tab += 1

			" go through all windows
			let l:win = 0
			while l:win < winnr('$')
				let l:win += 1
				" whatever buffer is in this window in this tab, remove it from
				" l:buffers list
				let l:thisbuf = winbufnr(l:win)
				call remove(l:buffers, index(l:buffers, l:thisbuf))
			endwhile
		endwhile

		" if there are any buffers left, delete them
		if len(l:buffers)
			execute 'bwipeout' join(l:buffers)
		endif
	finally
		" go back to our original tab page
		execute 'tabnext' l:currentTab
	endtry
endfunction
"""""""""""""""" /Wipeout """""""""""""""""""

""""""""""""""""""""""" YCM Config """"""""""""""""""""""""
"if has('unix')
"	" Let YouCompleteMe use tag files for completion as well:
"	let g:ycm_collect_identifiers_from_tags_files = 1
"
"	" Turn off prompting to load .ycm_extra_conf.py:
"	let g:ycm_confirm_extra_conf = 0
"
"	" Map GetType to an easier key combination:
"	nnoremap <leader>ty :YcmCompleter GetType<CR>
"
"	" Compile the file
"	nnoremap <leader>y :YcmDiag<CR>
"
"	" F2 will jump to a variable/method definition
"	map <F2> :YcmCompleter GoTo<CR>
"
"	nnoremap <leader>diag YcmDiag<CR>
"
"	" Ignore some files
"	let g:ycm_filetype_blacklist = {
"		\ 'tagbar'    : 1,
"		\ 'qf'        : 1,
"		\ 'notes'     : 1,
"		\ 'markdown'  : 1,
"		\ 'unite'     : 1,
"		\ 'text'      : 1,
"		\ 'vimwiki'   : 1,
"		\ 'pandoc'    : 1,
"		\ 'infolog'   : 1,
"		\ 'vim'       : 1,
"		\ 'gitcommit' : 1,
"		\ 'gitrebase' : 1,
"		\ 'cmake'     : 1,
"		\ 'mail'      : 1,
"		\ 'tex'		  : 1
"	\}
"
"	let g:ycm_filetype_whitelist = {
"		\ 'javascript': 1,
"		\ 'python' : 1,
"		\ 'css'    : 1,
"		\ 'cpp'    : 1,
"		\ 'php'    : 1,
"		\ 'fortran': 1,
"		\ 'xml'    : 1,
"		\ 'html'   : 1,
"	\}
"
"	" Ignore large files (BONA db's for instance)
"	let g:ycm_disable_for_files_larger_than_kb = 300
"
"	" Shut off preview window on PHP files
"	if (&ft ==? 'php')
"		let g:ycm_add_preview_to_completeopt=0
"	endif
"	" Alternatively..
"	"au BufNewFile,BufRead *.php let g:ycm_add_preview_to_completeopt=0
"
"endif
"""""""""""""""""""""" /YCM Config """"""""""""""""""""""""

"""""""""""""""""""" Post-Plug VIM Remappings """"""""""""""""""""
filetype on
syntax on
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
let fortran_free_source=1
let fortran_have_tabs=1
set number
set ignorecase
set noincsearch
set hlsearch
set ffs=unix,dos

" Tell vim to set the current directory to the directory
" of the file being opened:
set autochdir

" Have vim reload a file if it has changed outside
" of vim:
set autoread

" Remove trailing space
nnoremap <leader>rt :%s/\s\s*$//<CR>
let trim_whitelist = ['php', 'js', 'cpp', 'h', 'vim', 'css']
" autocmd BufWritePre * if index(trim_whitelist, &ft) >= 0 | :%s/\s\+$//e

" Ignore whitespace on vimdiff
if &diff
	" diff mode
	set diffopt+=iwhite
endif

" Faster vertical expansion
nmap <C-v> :vertical resize +5<cr>
nmap <C-b> :above resize +5<cr>

" Swap splits to vertical
noremap <C-w>th <C-W>t<c-w>H
noremap <C-w>tv <C-W>t<c-w>K

" Remove search results
noremap <Leader>/ :noh<cr>

" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv

" Match <> brackets
set matchpairs+=<:>

" try to automatically fold xml
let xml_syntax_folding=1

" Fix typos with abbreviations
ab laster laser
ab jsut just
ab eticket etiket
ab breif brief
ab OPL2 OPAL2
ab unqiue unique
ab unique unique

"""""""""""""""""""" Post-Plug VIM Remappings """"""""""""""""""""
" vim: tw=80 ts=3 sts=3 sw=3 noet nowrap :
