-- Define a function to prompt for a filename
function filename()
    -- Ask for the filename input using vim.fn.input
    local name = vim.fn.input("Enter the filename: ")
    return name
end

-- Create a keymap for <C-n> to open the file
vim.keymap.set('n', '<C-n>', function()
    local file = filename()  -- Get the filename from the function
    if file ~= "" then
        vim.cmd('edit ' .. file)  -- Open the file with :edit
    end
end)

