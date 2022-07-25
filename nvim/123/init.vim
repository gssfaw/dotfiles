set nocompatible
filetype plugin indent on
syntax enable
colorscheme monokai
hi Normal guibg=NONE ctermbg=NONE
highlight Pmenu ctermbg=gray guibg=gray
set termguicolors
set number
set relativenumber
set splitbelow splitright
set encoding=utf-8
set fileencoding=utf-8
set shortmess+=c
set laststatus=1
set scrolloff=3
set smarttab
set ic
set linebreak
set omnifunc=syntaxcomplete#Complete
set nobackup
set nowb
set noswapfile
set wrap linebreak


augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=1000}
augroup END

nnoremap <silent> <A-t> :NvimTreeToggle<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
map <F6> :setlocal spell! spelllang=en_us
map <F7> :set spelllang=ru_ru
nnoremap <A-s> :w<cr>

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

inoremap <A-a> <ESC>A

nnoremap <silent> <c-Up> :resize +1<CR>
nnoremap <silent> <c-Down> :resize -1<CR>
nnoremap <silent> <c-left> :vertical resize -1<CR>
nnoremap <silent> <c-right> :vertical resize +1<CR>




nnoremap <silent><F1> :noh<CR>

nnoremap <F12> :%s/\s\+$//<CR>



"Plugins
call plug#begin()
Plug 'karb94/neoscroll.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'lervag/vimtex'
Plug 'https://github.com/Shougo/neosnippet.vim'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/Shougo/neosnippet-snippets'
Plug 'https://github.com/lifepillar/vim-mucomplete'
Plug 'ggandor/lightspeed.nvim'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/goolord/alpha-nvim'

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'vim-python/python-syntax'
call plug#end()





set completeopt-=preview
set completeopt+=menuone,noselect
let g:mucomplete#enable_auto_at_startup = 1


autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>




let g:vimtex_view_method = 'zathura'
let maplocalleader = ","



imap <A-k>     <Plug>(neosnippet_expand_or_jump)
smap <A-k>     <Plug>(neosnippet_expand_or_jump)
xmap <A-k>     <Plug>(neosnippet_expand_target)



set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_tex_checkers = ['lacheck']




let g:pymode_run_bind = '<leader><F9>'
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"

let g:pymode_lint_write = 1

let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0


let g:pymode_syntax_space_errors = 0



hi ColorColumn ctermbg=8



lua << END
require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,       -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,             -- Function to run after the scrolling animation ends
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
})

require('neoscroll.config').set_mappings(t)

 vim.g.indent_blankline_filetype_exclude = {
    "help",
    "alpha",
    "NvimTree",
  }
require("indent_blankline").setup {
}
--alpha config (стартовый экран)
require'alpha'.setup(require'alpha.themes.startify'.opts)
--lualine config
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'moonfly',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = ' ', right = ' '},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
--nvimtree config
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 25,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
END



