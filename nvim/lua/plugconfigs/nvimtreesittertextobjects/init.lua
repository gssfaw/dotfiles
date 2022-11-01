require'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ad"] = "@conditional.outer",
        ["id"] = "@conditional.inner",
        ["фа"] = "@function.outer",
        ["ша"] = "@function.inner",
        ["фс"] = "@class.outer",
        ["шс"] = "@class.inner",
        ["фд"] = "@loop.outer",
        ["шд"] = "@loop.inner",
        ["фв"] = "@conditional.outer",
        ["шв"] = "@conditional.inner",
      },
      -- You can choose the select mode (default is charwise 'v')
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V', -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      -- If you set this to `true` (default is `false`) then any textobject is
      -- extended to include preceding xor succeeding whitespace. Succeeding
      -- whitespace has priority in order to act similarly to eg the built-in
      -- `ap`.
      include_surrounding_whitespace = false,
    },
--       move = {
--      enable = true,
--      set_jumps = true, -- whether to set jumps in the jumplist
--      goto_next_start = {
--        ["]m"] = "@function.outer",
--        ["]]"] = "@class.outer",
--      },
--      goto_next_end = {
--        ["]M"] = "@function.outer",
--        ["]["] = "@class.outer",
--      },
--      goto_previous_start = {
--        ["[m"] = "@function.outer",
--        ["[["] = "@class.outer",
--      },
--      goto_previous_end = {
--        ["[M"] = "@function.outer",
--        ["[]"] = "@class.outer",
--      },
--    },
  }
  }
