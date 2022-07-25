local map = vim.api.nvim_set_keymap
map("n", "<A-s>", "<cmd>w<cr>", { desc = "Save" })
--nvim nvimtree 
map("n", "<A-t>", "<cmd>NvimTreeToggle<CR>", {noremap = true, silent = true})
map("n", "<A-n>", "<cmd>NvimTreeFindFile<CR>", {noremap = true, silent = true})
--update cwd
map("n", "<F4>", "<cmd>lcd %:p:h<CR>", {noremap = true, silent = true})
--lang
map("n", "<F6>", "<cmd>setlocal spell! spelllang=en_us<CR>",{silent = true})
map("n", "<F7>", "<cmd>set spelllang=ru_ru<CR>",{silent = true})
--jump to EOL
map("i", "<A-a>", "<ESC>A", {noremap = true})
--resize
map("n", "<C-Up>", "<cmd>resize +1<CR>", {noremap = true, silent = true})
map("n", "<C-Down>", "<cmd>resize -1<CR>", {noremap = true, silent = true})
map("n", "<C-left>", "<cmd>vertical resize -1<CR>", {noremap = true, silent = true})
map("n", "<C-right>", "<cmd>vertical resize +1<CR>", {noremap = true, silent = true})
--no highlight
map("n", "<F2>", "<cmd>noh<CR>", {noremap = true, silent = true})
--buffers
map("n", "<C-j>", "<C-W>j", {noremap = true})
map("n", "<C-k>", "<C-W>k", {noremap = true})
map("n", "<C-h>", "<C-W>h", {noremap = true})
map("n", "<C-l>", "<C-W>l", {noremap = true})

--snippets
map("i", "<A-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", {noremap = true, silent = true})
map("s", "<A-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", {noremap = true, silent = true})
map("i", "<A-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", {noremap = true, silent = true})
map("s", "<A-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", {noremap = true, silent = true})
--latex check syntax
map("n", "<F12>", "<cmd>compiler lacheck<CR>",{noremap = true, silent = true})
--telescope
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>",{silent = true})
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>",{silent = true})
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>",{silent = true})
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>",{silent = true})
--bufferline
map("n", "[b", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})
map("n", "]b", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})

map("n", "{b", ":BufferLineMoveNext<CR>", {noremap = true, silent = true})
map("n", "}b", ":BufferLineMovePrev<CR>", {noremap = true, silent = true})
map("n", "<c-w>e", ":bdelete<CR>", {noremap = true, silent = true})
map("n", "<c-ц>у", ":bdelete<CR>", {noremap = true, silent = true})

map("n", "<A-1>", ":lua require'bufferline'.go_to_buffer(1)<CR>",{silent = true})
map("n", "<A-2>", ":lua require'bufferline'.go_to_buffer(2)<CR>",{silent = true})
map("n", "<A-3>", ":lua require'bufferline'.go_to_buffer(3)<CR>",{silent = true})
map("n", "<A-4>", ":lua require'bufferline'.go_to_buffer(4)<CR>",{silent = true})
map("n", "<A-5>", ":lua require'bufferline'.go_to_buffer(5)<CR>",{silent = true})
map("n", "<A-6>", ":lua require'bufferline'.go_to_buffer(6)<CR>",{silent = true})
--aerial
-- Toggle the aerial window with <leader>a
map('n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
map('n', '<leader>ф', '<cmd>AerialToggle!<CR>', {})
    -- Jump forwards/backwards with '{' and '}'
map( 'n', '<leader>[', '<cmd>AerialPrev<CR>', {})
map( 'n', '<leader>]', '<cmd>AerialNext<CR>', {})
    -- Jump up the tree with '[[' or ']]'
map( 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
map( 'n', ']]', '<cmd>AerialNextUp<CR>', {})
--russian

map("n", "<C-в>", "<C-d>", {noremap = true, silent = true})
map("n", "<C-и>", "<C-b>", {noremap = true, silent = true})
map("n", "<C-г>", "<C-u>", {noremap = true, silent = true})
map("i", "<C-ц>", "<C-w>", {noremap = true, silent = true})
map("i", "<C-щ>", "<C-o>", {noremap = true, silent = true})
map("n", "<C-ц>", "<C-w>", {noremap = true, silent = true})
map("n", "<C-к>", "<C-r>", {noremap = true, silent = true})


map("n", "<C-о>", "<C-W>j", {noremap = true})
map("n", "<C-л>", "<C-W>k", {noremap = true})
map("n", "<C-р>", "<C-W>h", {noremap = true})
map("n", "<C-д>", "<C-W>l", {noremap = true})
map("n", "<A-ы>", "<ESC>:w<CR>", {noremap = true})
map("i", "<A-ф>", "<ESC>A", {noremap = true})
map("n", "<A-е>", "<cmd>NvimTreeToggle<CR>", {noremap = true, silent = true})
map("n", "<A-т>", "<cmd>NvimTreeFindFile<CR>", {noremap = true, silent = true})

map("n", "<leader>аа", "<cmd>lua require('telescope.builtin').find_files()<cr>",{silent = true})
map("n", "<leader>ап", "<cmd>lua require('telescope.builtin').live_grep()<cr>",{silent = true})
map("n", "<leader>аи", "<cmd>lua require('telescope.builtin').buffers()<cr>",{silent = true})
map("n", "<leader>ар", "<cmd>lua require('telescope.builtin').help_tags()<cr>",{silent = true})

map("i", "<A-о>", "<cmd>lua require'luasnip'.jump(1)<CR>", {noremap = true, silent = true})
map("s", "<A-о>", "<cmd>lua require'luasnip'.jump(1)<CR>", {noremap = true, silent = true})
map("i", "<A-л>", "<cmd>lua require'luasnip'.jump(-1)<CR>", {noremap = true, silent = true})
map("s", "<A-л>", "<cmd>lua require'luasnip'.jump(-1)<CR>", {noremap = true, silent = true})
