require("config.lazy")
require("keymap.telescope")
require("keymap.telescopebrowser")
require("welcome")
require("keymap.files")
vim.opt.termguicolors = true
-- set the eden-fox-theme at start
vim.cmd("colorscheme duskfox") 
-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

print("hey man just start typing !")
