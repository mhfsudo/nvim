-- Load mason ()

return {
	{
		-- (https://github.com/williamboman/mason.nvim)
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- (https://github.com/williamboman/mason-lspconfig.nvim)
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"cssls",
					"dockerls",
					"gopls",
					"groovyls",
					"html",
					"helm_ls",
					"jdtls",
					"biome",
					"jsonls",
					"kotlin_language_server",
					"ltex",
					"lua_ls",
					"markdown_oxide",
					"basedpyright",
					"terraformls",
					"tsserver",
					"vimls",
					"yamlls",
				},
			})
		end,
	},
	{
		-- (https://github.com/neovim/nvim-lspconfig)
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.bashls.setup({})
			lspconfig.cssls.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.groovyls.setup({})
			lspconfig.html.setup({})
			lspconfig.helm_ls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.biome.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.kotlin_language_server.setup({})
			lspconfig.ltex.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.markdown_oxide.setup({})
			lspconfig.basedpyright.setup({})
			lspconfig.terraformls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.vimls.setup({})
			lspconfig.yamlls.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
