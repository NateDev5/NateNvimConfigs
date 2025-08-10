require("config.lazy")
require("vim-options")

function notify_arrow_pressed (key)
	vim.notify("Use '" .. key .. "' instead!!")
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

vim.keymap.set('n', '<Up>', ":lua notify_arrow_pressed('k')<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<Down>', ":lua notify_arrow_pressed('j')<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<Left>', ":lua notify_arrow_pressed('h')<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', ":lua notify_arrow_pressed('l')<CR>", { noremap = true, silent = true })

vim.keymap.set('n', '<leader>xx', ":Trouble diagnostics toggle<CR>", {})

vim.keymap.set('n', '<leader>s', ":ClangdSwitchSourceHeader<CR>", { noremap = true, silent = true})

vim.api.nvim_create_autocmd("BufWritePost", {
    callback = function ()
        vim.cmd("set statuscolumn=%s %{printf('%-3d', v:lnum)}┃ %{printf('%-3d', v:relnum)}")
    end
})
