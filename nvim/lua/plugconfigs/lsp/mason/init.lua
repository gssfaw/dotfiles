--require("nvim-lsp-installer").setup({
--    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
--    ui = {
--        icons = {
--            server_installed = "✓",
--            server_pending = "➜",
--            server_uninstalled = "✗"
--        }
--    }
--})
require("mason").setup {
	ui = {
		icons = {
			package_installed = "✓"
		}
	}
}
--require("mason-lspconfig").setup {
--	ensure_installed = { "sumneko_lua" },
--}
