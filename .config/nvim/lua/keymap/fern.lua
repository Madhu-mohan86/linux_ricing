function opendrawer()
	local curr_dir=vim.fn.getcwd()
	vim.cmd('Fern -toggle -drawer ' .. curr_dir)
end
vim.keymap.set("n","<C-d>",opendrawer)
