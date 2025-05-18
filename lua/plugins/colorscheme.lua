return {
    "AlexvZyl/nordic.nvim",
    config = function()
        require("nordic").setup({
            transparent = {
                bg = true,
                float = true
            }
        })
        vim.cmd("colorscheme nordic")
    end
}
