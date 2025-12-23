return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    event = "VeryLazy", -- load it after lazy has already load the editor.

    -- branch = 'master'
    -- main = "nvim-treesitter.configs",

    branch = 'main',
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
    },
}
