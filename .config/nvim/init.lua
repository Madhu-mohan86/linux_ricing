require("config.lazy")
require("keymap.telescope")
require("keymap.telescopebrowser")
require("welcome")
require("keymap.files")
require("keymap.fern")

vim.lsp.set_log_level("debug")


-- lsp config to enable biome lsp for js server
local lspconfig = require('lspconfig')

lspconfig.biome.setup{
  cmd = { "/sbin/biome", "lsp-proxy" },  -- Ensure biome is available in your path
  filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "svelte", "vue", "css", "graphql", "json", "jsonc", "astro" },
   require("notify")("setupworking"), 
 
root_dir = function(fname)
    -- Check if there is a .git directory or a package.json file in the current or parent directories
    return vim.fn.finddir('.git', fname .. ';') or vim.fn.findfile('package.json', fname .. ';') or vim.fn.getcwd()
  end

-- on_init = function(client)
--    require("notify")("biomeserver_initialized")    
--  end,

  -- Add a fallback message if Biome LSP does not attach
--  on_exit = function(code, signal)
--    if code ~= 0 then
--      require("notify")("errrirr") 
--    else
--      require("notify")("er2")
--    end
--  end
}


vim.opt.termguicolors = true
-- set the eden-fox-theme at start
vim.cmd("colorscheme duskfox") 
-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- vim.cmd('let g:fern#renderer = "nerdfont"')
print("hey man just start typing !")
