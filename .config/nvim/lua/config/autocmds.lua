-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("ziggy", {}),
	pattern = "ziggy",
	callback = function()
		vim.lsp.start({
			name = "Ziggy LSP",
			cmd = { "ziggy", "lsp" },
			root_dir = vim.loop.cwd(),
			flags = { exit_timeout = 1000 },
		})
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("ziggy_schema", {}),
	pattern = "ziggy_schema",
	callback = function()
		vim.lsp.start({
			name = "Ziggy LSP",
			cmd = { "ziggy", "lsp", "--schema" },
			root_dir = vim.loop.cwd(),
			flags = { exit_timeout = 1000 },
		})
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("superhtml", {}),
	pattern = "superhtml",
	callback = function()
		vim.lsp.start({
			name = "SuperHTML LSP",
			cmd = { "superhtml", "lsp" },
			root_dir = vim.loop.cwd(),
			flags = { exit_timeout = 1000 },
		})
	end,
})

vim.filetype.add({
	extension = {
		jbuilder = "ruby",
		smd = "supermd",
		shtml = "superhtml",
		ziggy = "ziggy",
		["ziggy-schema"] = "ziggy_schema",
	},
})
