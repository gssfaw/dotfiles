require('plugins')
require('mappings')

require('colorscheme')


--plugin configs
require('plugconfigs/bufferline')
require('plugconfigs/nvimtree')
require('plugconfigs/lualine')
require('plugconfigs/nvim-cmp')
require('plugconfigs/lsp/lsp-installer')
require('plugconfigs/lsp/lspconfig')
require('plugconfigs/luasnip')
require("luasnip.loaders.from_vscode").lazy_load()
require('plugconfigs/treesitter')
require('plugconfigs/vimtex')
require('aerial').setup({})
require('plugconfigs/lspkind')
--rust
local o = vim.o
local w = vim.wo
local b = vim.bo

o.number = true
o.relativenumber = true
o.termguicolors = true
o.splitbelow = true
o.splitright = true
o.autoindent = true
o.expandtab = true
o.softtabstop = 4
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true
o.modeline = false
o.encoding="utf-8"
o.fileencoding = "utf-8"
o.swapfile = false
o.smarttab = true
o.ic = true
o.completeopt = "menuone,noselect"
o.scrolloff = 3
o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.backup = false
o.cursorline = true
o.undofile = true
o.undodir = vim.fn.stdpath('config') .. '/nvim/undo'
o.langmap ="ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz,ъхХЪ;][{}"

