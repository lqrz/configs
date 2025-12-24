return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate', -- autoupdate whenever this script changes.
    event = "VeryLazy", -- load it after lazy has already load the editor.

    -- branch = 'main',
    branch = 'master',
    main = "nvim-treesitter.configs",

    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects'
    },

    -- config = function(_, opts)
    -- end,

    opts = {
        ensure_installed = {
            "lua",
            "luadoc",
            "bash",
            "c",
            "css",
            "html",
            "javascript",
            "json",
            "markdown",
            "tsx",
            "typescript",
            "vim",
            "sql",
            "python",
            "yaml",
        },

        highlight = {
            enable = true
        },
        indent = {
            enable = true
        },

        textobjects = {
            select = {
                enable = true,
                lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
                keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ["aa"] = "@parameter.outer",
                    ["ia"] = "@parameter.inner",
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    ["ic"] = "@class.inner",
                },
            },
            move = {
                enable = true,
                set_jumps = true, -- whether to set jumps in the jumplist
                goto_next_start = {
                    ["]m"] = "@function.outer",
                    ["]]"] = "@class.outer",
                },
                goto_next_end = {
                    ["]M"] = "@function.outer",
                    ["]["] = "@class.outer",
                },
                goto_previous_start = {
                    ["[m"] = "@function.outer",
                    ["[["] = "@class.outer",
                },
                goto_previous_end = {
                    ["[M"] = "@function.outer",
                    ["[]"] = "@class.outer",
                },
            },
        },
    },
}
