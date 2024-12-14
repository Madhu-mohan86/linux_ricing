vim.wo.number = true            -- Enable line numbers
vim.wo.fillchars = 'eob: '      -- Set fillchars for end-of-buffer to an empty space
-- Function to set custom colors for line numbers
function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#54B435', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='#54B435', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#54B435', bold=true })
end

-- Call the function to apply the colors
LineNumberColors()


