return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("nvim-tree").setup({
            git = {
                enable = false
            },
            view = {
                width = 32
            },
            renderer = {
                indent_markers = {
                    enable = true
                },
                icons = {
                    show = {
                        folder_arrow = false
                    }
                }
            }
        })
    end
}
