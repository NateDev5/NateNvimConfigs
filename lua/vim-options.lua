vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

-- vim.opt.number = true
-- vim.opt.relativenumber = true
-- vim.opt.statuscolumn = "%{printf('%4d', v:lnum)} ┃ %{printf('%-4d', v:relnum)}"

vim.cmd.colorscheme("gruvbox")

vim.opt.number = true
vim.opt.relativenumber = true

vim.api.nvim_create_autocmd({"WinEnter", "BufEnter"}, {
    callback = function()
        vim.opt_local.statuscolumn = " %{printf('%3d', v:lnum)} ┃ %{printf('%-3d', v:relnum)}"
    end
})

vim.api.nvim_create_autocmd("WinLeave", {
    callback = function()
        vim.opt_local.statuscolumn = " %{v:lnum}"
    end
})

-- vim.opt.statuscolumn = "%s %{printf('%4d', v:lnum)} ┃ %{printf('%-4d', v:relnum)}"
