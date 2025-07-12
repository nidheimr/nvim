return {
    "williamboman/mason-lspconfig.nvim",
    branch = "v1.x",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip"
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()

        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-e>"] = cmp.mapping.abort(),
                ["<Tab>"] = cmp.mapping.confirm({ select = true })
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "vsnip" }
            }, {
                { name = "buffer" }
            })
        })

        local capabilities  = require("cmp_nvim_lsp").default_capabilities()
        require("mason-lspconfig").setup_handlers({
            function (server_name)
                if server_name == "rust_analyzer" then
                    return
                end

                if server_name == "clangd" then
                    require("lspconfig").clangd.setup({
                        cmd = { "clangd", "--header-insertion=never" }
                    })

                    return
                end

                require("lspconfig")[server_name].setup({
                    capabilities = capabilities 
                })
            end
        })
    end
}
