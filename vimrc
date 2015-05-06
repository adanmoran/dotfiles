" Needed for Vundles
set shell=/bin/bash

" Used for host detection
let hostname = substitute(system('hostname'), '\n', '', '')

if hostname == "pof" || hostname == "tinder"
	let domain="neptec"
elseif hostname == "dena" || hostname == "sahand" || hostname == "pontus"
	let domain="school"
elseif $TRUE_HOST != ""
	let domain="school"
else
	let domain="home"
endif
"echo "Using domain " . domain

let is_win=0
let is_mac=0
let is_nix=1
if has("win32")||has("win32unix")
	let is_win=1
elseif has("mac")
	let is_mac=1
else
	let is_nix=1
endif


" Configure some unconventional filetypes
au BufNewFile,BufRead *.html.base set filetype=html
au BufNewFile,BufRead *.ftn90 set filetype=fortran
au BufNewFile,BufRead *.module set filetype=php
au BufNewFile,BufRead *.gs set filetype=javascript

"
" Vundle.  use :PluginInstall to install all these plugins
"

" set the runtime path to include Vundle and initialize
set nocompatible				  " be iMproved, required
filetype off						" required
set rtp+=~/dotfiles/Vundle.vim
call vundle#begin("~/dotfiles/bundles") " This always fails the second time around

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Sourrounds paranthesis and stuff https://github.com/tpope/vim-surround
"Plugin 'tpope/vim-surround'

" Navigate around numbers easier.. https://github.com/Lokaltog/vim-easymotion
Plugin 'Lokaltog/vim-easymotion'


" Solarized colour scheme
Plugin 'altercation/vim-colors-solarized.git'

" Atelier color scheme
Plugin 'atelierbram/vim-colors_atelier-schemes'
" base16-atelierforest base16-atelierplateau base16-atelierheath base16-ateliercave base16-ateliersulphurpool base16-atelierlakeside base16-ateliersavanna base16-atelierseaside base16-atelierdune base16-atelierestuary

" Full of colour schemes:
Plugin 'flazz/vim-colorschemes'
" Tomorrow Tomorrow-Night Tomorrow-Night-Eighties Tomorrow-Night-Bright Tomorrow-Night-Blue SlateDark PapayaWhip MountainDew Monokai Monokai-chris DevC++ c colorscheme_template colorful colorful256 colorer coldgreen coffee codeschool CodeFactoryv3 codeburn codeblocks_dark cobalt cobaltish clue cloudy clearance cleanroom cleanphp clarity ciscoacl chrysoprase chocolate ChocolatePapaya ChocolateLiquor chlordane chela_light Chasing_Logic charon charged-256 chance-of-storm cascadia carvedwood carvedwoodcool carrot caramel candy candyman candycode campfire camo calmar256-light cake16 C64 bw bvemu buttercream busybee busierbee burnttoast256 bubblegum brown brookstream breeze borland bog bocau bmichaelsen blugrine bluez blue blueshift blueprint bluegreen bluedrake bluechia blink blazer BlackSea blacklight blackdust blackboard blackbeauty black_angus biogoo billw bensday beauty256 beachcomber bclear bayQua baycomb basic base16-atelierdune badwolf babymate256 autumn autumnleaf automation atom asu1dark astronaut asmanian_blood ashen aqua apprentice ansi_blows anotherdark aiseered af advantage adrian adobe adaryn adam abra 3dglasses 256-jungle 256-grayvim 0x7A69_dark heliotrope habiLight h80 guepardo guardian gruvbox grishin greyblue grey2 greenvision greens grb256 graywh gravity grape gothic gotham gotham256 gor google golden golded gobo github getfresh getafe gentooish gemcolors gardener fu fruity fruit fruidle frood freya forneus fokus fog fnaqevan flatui flattr flatland flatlandia flatcolor fine_blue felipec far evening_2 enzyme emacs elrodeo elisex elise elda.vim* ekvoli ekinivim ego edo_sea editplus ecostation eclm_wombat eclipse earth earthburn earendel dusk dull dual doriath doorhinge donbass django distinguished disciple developer deveiate devbox-dark-256 detailed desert desertEx desertedocean desertedoceanburnt desert256 desert256v2 derefined denim delphi delek dawn darth darkZ darkzen darktango darkspectrum darkslategray dark-ruby darkroom darkrobot darkocean darker-robin darkerdesert darkeclipse darkdot darkburn darkbone darkBlue darkblue2 darkblack dante d8g_04 d8g_03 d8g_02 d8g_01 custom cthulhian corporation corn cool contrasty colorzone navajo-night nature native mustang muon mud mrpink mrkn256 motus moss moria mopkai mophiaSmoke mophiaDark montz monokain molokai mod_tcsoft mizore mint miko midnight midnight2 metacosm mellow mdark mayansmoke matrix martin_krischik mars maroloccio marklar manxome manuscript mango made_of_code mac_classic luna luinnar lucius louver lodestone lizard lizard256 literal_tango liquidcarbon lingodirector lilypink lilydjwg_green lilydjwg_dark lilac lightcolors leya lettuce less leo leglight2 legiblelight lazarus last256 landscape kyle kruby kolor kkruby kiss kib_plastic kib_darktango khaki kellys kate kalt kaltex kalisi jiks jhlight jhdark jellyx jellybeans jelleybeans jammy ironman ir_black inkpot ingretu industry industrial impact impactG iceberg icansee ibmedit iangenzo hybrid hybrid-light hornet holokai herokudoc herokudoc-gvim herald hemisu softblue softbluev2 smyck smp skittles_dark skittles_berry simplewhite simple_b simpleandfriendly simple256 silent sift sienna shobogenzo shadesofamber sf sexy-railscasts settlemyer seoul seoul256 seoul256-light selenitic sea seashell sean scite scala saturn satori sand rtl rootwater robinhood revolutions reloaded reliable relaxedgreen refactor redstring redblack rdark rdark-terminal rcg_term rcg_gui rastafari random rainbow_neon rainbow_fruit rainbow_fine_blue railscasts radicalgoodspeed quagmire python pyte pw putty psql pspad proton professional prmths print_bw potts pleasant playroom pink pic phpx phphaxor phd pf_earth perfect peppers pencil peaksea paintbox pacific otaku osx_like orange olive oceanlight oceandeep oceanblack oceanblack256 obsidian obsidian2 nuvola nour norwaytoday northsky northland no_quarter nightwish nightVision night_vision night nightsky nightshimmer nightflight nightflight2 nicotine newsprint newspaper nevfn neverness neverland neverland-darker neverland2 neverland2-darker neutron nerv-ous neon nefertiti nedit nedit2 nazca navajo zmrok zephyr zen zenesque zenburn zazen yeller yaml xterm16 xoria256 xmaslights xian xemacs wuye wood wombat wombat256 wombat256mod wombat256i winter wintersday win9xblueback widower whitedust whitebox watermark warm_grey wargrey vylight vydark void vj vividchalk visualstudio vilight vibrantink vexorian vc vcbc vanzan_color up underwater underwater-mod understated umber-green ubloh two2tango twitchy twilight twilight256 tutticolori turbo trogdor trivial256 transparent torte toothpik tony_light tomatosoup tolerable tir_black tidy tibet thor thestars thegoodluck textmate16 tetragrammaton tesla telstar tcsoft tchaba tchaba2 taqua tangoX tango tangoshady tango-morning tango-desert tango2 tabula synic symfony swamplight surveyor summerfruit summerfruit256 strawimodo strange stingray stackoverflow spring spiderhawk spectro southwest-fog southernlights soso sorcerer sonoma sonofobsidian sol sol-term solarized softlight

if is_win==0 && domain!="school"
	" YouCompleteMe
	Plugin 'Valloric/YouCompleteMe'

	" YCMGenerator - generates configs for YouCompleteMe
	Plugin 'rdnetto/YCM-Generator'
endif

" NERD Tree - file explorer for vim
Plugin 'scrooloose/nerdtree'

" Ctrl-P - fuzzy file finder
Plugin 'kien/ctrlp.vim'

" Better C++ Syntax Highlighting:
Plugin 'octol/vim-cpp-enhanced-highlight'

if is_win==0
	" Track the ultisnips engine.
	Plugin 'SirVer/ultisnips'

	" Snippets are separated from the engine. Add this if you want them:
	Plugin 'honza/vim-snippets'
endif

if is_win==0 && (domain=="neptec" || domain=="home")
	" tagbar - allows browsing tags of the current source file
	" from ctags. Good for seeing functions, variables, etc.
	Plugin 'majutsushi/tagbar'
endif

" vim-sleuth - heuristically determines spacing in terms
" of tabs, spaces, etc. based on what's in use in the
" current file and the file around it:
Plugin 'tpope/vim-sleuth'

" fugitive - a Git wrapper for vim. Also allows current
" git branch to be shown by vim-airline:
Plugin 'tpope/vim-fugitive'
set diffopt+=vertical

" Plugin to assist with commenting out blocks of text:
Plugin 'tomtom/tcomment_vim'

" vim-airline: 'Lean & mean status/tabline for vim that's light as air.'
Plugin 'bling/vim-airline'

" Switch between header and source files:
Plugin 'vim-scripts/a.vim'

" Plugin to help manage vim buffers:
Plugin 'jeetsukumaran/vim-buffergator'

" Plugin to highlight the variable under the cursor:
Plugin 'OrelSokolov/HiCursorWords'

" A plugin to use rtags in vim. (rtags allows for code following,
" some refactoring, etc.)
" Ensure to run the following in the build directory that uses rtags
"    cmake . -DCMAKE_EXPORT_COMPILE_COMMANDS=1
"    rc -J .
" And have the rdm service running somewhere in the background.
Plugin 'lyuts/vim-rtags'

" Database client
Plugin 'vim-scripts/dbext.vim'

" XML helper
Plugin 'othree/xml.vim'

" Folding
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" JsHints
"Plugin 'wookiehangover/jshint.vim'

" All of your Plugins must be added before the following line
call vundle#end()				" required
filetype plugin indent on	 " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList		 - lists configured plugins
" :PluginInstall	 - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean		- confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"" Random Function
"" http://mo.morsi.org/blog/node/299
"function! s:Rand(max)
"y a
"redir @b
"php << EOF
"	<?php
"	print rand(0,10);
"EOF
"redir END
"let @a = strpart(@a, 0, strlen(@a) - 1)
"let @b = strpart(@b, 1, strlen(@b) - 1)
"let @c = @a . @b
".s/.*/\=@c/g
"endfunction
"command! -nargs=? Rand :call <SID>Rand(<q-args>)


" Colour scheme
if has("gui_running")
	set mousemodel=popup

	"colorscheme desert
	"colorscheme oceandeep

	"set background=light
	set background=dark
	colorscheme solarized
endif

" OS Detection
if is_win
	behave xterm
	set ffs=unix
	set backspace=2
	" options: set backspace=indent,eol,start
"elseif has('mac')
"	 ......
"elseif has('unix')
"	let matt="is_unix"
endif

""""""""""""""""""""""" Ctrl-P """"""""""""""""""""""""
" Set up Ctrl-P shortcut key for Ctrl-P:
let g:ctrlp_map = '<c-k>'
let g:ctrlp_cmd = 'CtrlP'
map <c-m> :CtrlPTag<CR>

" Unmap center/<CR> from launching CTRL-P, because it's annoying
unmap <CR>
"""""""""""""""""""""" /Ctrl-P """"""""""""""""""""""""

" For vim-cpp-enhanced-highlight, turn on highlighting of class scope:
let g:cpp_class_scope_highlight = 1

" Tell vim to set the current directory to the directory
" of the file being opened:
set autochdir

" Tell vim to look for a tags file in the current
" directory, and all the way up until it finds one:
set tags=./tags;/

""""""""""""""""""""""" YCM Config """"""""""""""""""""""""
if has('unix')
	" Let YouCompleteMe use tag files for completion as well:
	let g:ycm_collect_identifiers_from_tags_files = 1

	" Turn off prompting to load .ycm_extra_conf.py:
	let g:ycm_confirm_extra_conf = 0

	" Map GetType to an easier key combination:
	nnoremap <leader>ty :YcmCompleter GetType<CR>

	" F2 will jump to a variable/method definition
	map <F2> :YcmCompleter GoTo<CR>

	nnoremap <leader>diag YcmDiag<CR>

	" Ignore some files
	let g:ycm_filetype_blacklist = {
		\ 'tagbar'    : 1,
		\ 'qf'        : 1,
		\ 'notes'     : 1,
		\ 'markdown'  : 1,
		\ 'unite'     : 1,
		\ 'text'      : 1,
		\ 'vimwiki'   : 1,
		\ 'pandoc'    : 1,
		\ 'infolog'   : 1,
		\ 'vim'       : 1,
		\ 'gitcommit' : 1,
		\ 'gitrebase' : 1,
		\ 'cmake'     : 1,
		\ 'mail'      : 1
	\}

	let g:ycm_filetype_whitelist = {
		\ 'javascript': 1,
		\ 'python' : 1,
		\ 'css'    : 1,
		\ 'cpp'    : 1,
		\ 'php'    : 1,
		\ 'fortran': 1,
		\ 'xml'    : 1,
		\ 'html'   : 1,
	\}

	" Ignore large files (BONA db's for instance)
	let g:ycm_disable_for_files_larger_than_kb = 300

endif
"""""""""""""""""""""" /YCM Config """"""""""""""""""""""""

"""""""""""""""""""" Ultisnips config """"""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
if is_win==0 && 1==0
	let g:UltiSnipsExpandTrigger="<c-j>"
	let g:UltiSnipsJumpForwardTrigger="<c-j>"
	let g:UltiSnipsJumpBackwardTrigger="<c-n>"

	" If you want :UltiSnipsEdit to split your window.
	"let g:UltiSnipsEditSplit="vertical"

	" If you want :UltiSnipsEdit to split your window.
	let g:UltiSnipsEditSplit="vertical"

	" Add to the runtime path so that custom
	" snippets can be found:
	set rtp+=~/dotfiles
endif
""""""""""""""""""" /Ultisnips config """"""""""""""""""""""


""""""""""""""""""""" Airline Config """"""""""""""""""""""
" For vim-airline, ensure the status line is always displayed:
set laststatus=2

" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
"""""""""""""""""""" /Airline Config """"""""""""""""""""""


""""""""""""""""""""" Tagbar Config """"""""""""""""""""""
" tagbar config. Enable it using this key map:
nmap <F8> :TagbarToggle<CR>
"""""""""""""""""""" /Tagbar Config """"""""""""""""""""""


""""""""""""""""""""" NERDTree """"""""""""""""""""""
" Shortcut key to open NERDTree:
map <F5> :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
nnoremap <leader>n :NERDTree .<CR>
"""""""""""""""""""" /NERDTree """"""""""""""""""""""


if is_win==0 && domain=="neptec"


	"""""""""""""""""""" ctags """""""""""""""""""""""
	" A key map to run ctags:
	nnoremap <leader>ct :!ctags .<CR>
	"""""""""""""""""""" /ctags """"""""""""""""""""""

endif


"""""""""""""""""""" DBext """""""""""""""""""""""
" let g:dbext_default_profile_<profile_name> = '<connection string>'
" https://github.com/vim-scripts/dbext.vim
let g:dbext_default_profile_3dri = 'type=SQLITE:dbname=/home/matt/workspace/opal2/3dri/Applications/OPAL2/3DRiWebScheduler/scan_schedule.db'
let g:dbext_default_profile_mysql_mayofest = 'type=MYSQL:user=www:password=hyper:dbname=mayofest'

let g:dbext_default_profile = '3dri'

nnoremap <leader>sel :DBListConnections<CR>
nnoremap <leader>dep :DBProfilesRefresh<CR>

"""""""""""""""""""" /DBext """"""""""""""""""""""


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

"JSHintToggle

filetype on
syntax on
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
let fortran_free_source=1
let fortran_have_tabs=1
set number
set ignorecase

" Easy save
noremap ^S :w<CR>
" map alt/apple or something-S for khea

" Remove trailing space
nnoremap <leader>rt :%s/\s\s*$//<CR>

" Ignore whitespace on vimdiff
if &diff
	" diff mode
	set diffopt+=iwhite
endif

"set ruler
set hlsearch

" vim: ts=3 sts=3 sw=3 noet nowrap :
