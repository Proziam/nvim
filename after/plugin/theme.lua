function Theme(theme)
	theme = theme or "catppuccin"
	vim.cmd.colorscheme(theme)
end

Theme()
