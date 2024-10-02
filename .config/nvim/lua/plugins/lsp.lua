return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				bashls = {},
				biome = {},
				rubocop = {
					mason = false,
				},
				ruby_lsp = {
					mason = false,
				},
				typos_lsp = {},
				yamlls = {
					settings = {
						yaml = {
							schemas = {
								["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
							},
						},
					},
				},
				zls = {},
			},
		},
	},
}
