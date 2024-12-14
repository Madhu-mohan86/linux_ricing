-- Define a function to prompt for a filename
function filename()
    -- Ask for the filename input using vim.fn.input
    local name = vim.fn.input("Enter the filename: ")
    return name
end

function createfile()
	local file=filename()
	local message="buffer"
	if file == " " then
	        require("notify")("enter correct filename") 
	        --vim.notify("This is an error message", "error")
		createfile() 
        elseif file ~= "" then
		vim.cmd('edit ' .. file)
	end
end

-- Create a keymap for <C-n> to open the file
vim.keymap.set('n', '<C-n>', createfile)

