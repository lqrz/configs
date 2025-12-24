return {
    "williamboman/mason-lspconfig.nvim",

    dependencies = {
        {
            "williamboman/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
        },

        "neovim/nvim-lspconfig"

    },

    opts = {
        ensure_installed = {
            "lua_ls",
            "basedpyright",
            "ruff",
            "stylua",
        },
        automatic_installation = true,
    },
}
