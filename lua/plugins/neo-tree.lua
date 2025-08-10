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
                window = {
                    position = "float",
                    popup = {
                        size = {
                            height = "50%",
                            width = "50%",
                        },
                        position = "50%",
                    },
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
