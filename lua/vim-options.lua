vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%s %{printf('%-3d', v:lnum)}┃ %{printf('%-3d', v:relnum)}"

vim.cmd.colorscheme("tokyonight")

vim.cmd("Neotree filesystem reveal left")

