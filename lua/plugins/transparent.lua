return {
    "xiyaowong/transparent.nvim",
    config = function()
        require("transparent").setup({
            extra_groups = {
                "NvimTreeWinSeparator",
                "NvimTreeNormal",
                "NvimTreeNormalNC"
            }
        })
    end
}
