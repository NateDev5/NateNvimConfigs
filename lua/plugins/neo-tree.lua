return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require('neo-tree').setup({
                event_handlers = {
                    {
                        event = "after_render",
                        handler = function()
                            vim.cmd("setlocal statuscolumn=")
                        end
                    }
                },
                filesystem = {
                    filtered_items = {
                        visible = true,
                        show_hidden_count = false,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                    },
                },
            })
            vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
        end,
    },
}
