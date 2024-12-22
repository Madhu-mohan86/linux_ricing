require("config.lazy")
require("keymap.telescope")
require("keymap.telescopebrowser")
require("welcome")
require("keymap.files")
require("keymap.fern")

vim.lsp.set_log_level("debug")


-- lsp config import
local lspconfig = require('lspconfig')

-- ############ JavaScript LSP setup ##########

lspconfig.biome.setup{
  cmd = { "/sbin/biome", "lsp-proxy" },  -- Ensure biome is available in your path
  filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "svelte", "vue", "css", "graphql", "json", "jsonc", "astro" },
   require("notify")("setupworking"), 
 
root_dir = function(fname)
    -- Check if there is a .git directory or a package.json file in the current or parent directories
    return vim.fn.finddir('.git', fname .. ';') or vim.fn.findfile('package.json', fname .. ';') or vim.fn.getcwd()
  end

}

-- ############# Rust LSP setup ##############


lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})

vim.opt.termguicolors = true
-- set the eden-fox-theme at start
vim.cmd("colorscheme duskfox") 
print("hey man just start typing !")
