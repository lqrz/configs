-- Lazy install bootstrap snippet
-- vim.fn.stdpath("data") returns the nvim data path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- vim.loop.fs_stat(lazypath) returns if the path exists
-- if it does not start (first start), clone the lazy.nvim repo
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

-- add lazypath to the nvim runtime path
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
    {
      -- Determine folder to search for plugins
      -- to be installed
        { import = "user.plugins" },
        { import = "user.plugins.lsp" },
    },
    {
        change_detection = {
                enabled = true,
                notify = false,
            },
    }
)
