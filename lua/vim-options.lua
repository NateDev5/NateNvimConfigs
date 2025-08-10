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
vim.opt.statuscolumn = "%s %{printf('%4d', v:lnum)} ┃ %{printf('%-4d', v:relnum)}"
