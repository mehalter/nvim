local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
		section_separators =  {'', ''},
		component_separators = {'|', '|'},
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {{'FugitiveHead', icon=''}},
		lualine_c = {'filename'},
		lualine_x = {
			{ 'diagnostics', sources = {"nvim_lsp"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
			'encoding',
			'filetype',
		},
		lualine_y = {'progress'},
		lualine_z = {'location'},
	},
	extensions = {'fugitive'}
}
