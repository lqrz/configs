return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  event = "VeryLazy", -- load it after lazy has already load the editor.
  -- main = "nvim-treesitter.configs",
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
