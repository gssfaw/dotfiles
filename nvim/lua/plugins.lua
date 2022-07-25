vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
}
    use {'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons', opt = true
}
}
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-omni'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'saadparwaiz1/cmp_luasnip'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'rafamadriz/friendly-snippets'
    use 'ggandor/lightspeed.nvim'
    use 'onsails/lspkind.nvim'
    use { "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",}
    use 'p00f/nvim-ts-rainbow'
    use 'lervag/vimtex'
    use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use 'stevearc/aerial.nvim'
    use 'cpea2506/one_monokai.nvim'
    use 'tanvirtin/monokai.nvim'
end)
