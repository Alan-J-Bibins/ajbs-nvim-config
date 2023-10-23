--my neovim config, from scratch

--import remaps before lazy.nvim boots up

require("maps.remaps")
require("options.options")

--setting up lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
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
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	spec={
		{import = "plugins"},
	}
})
--setting colorscheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])


--importing after folder plugin settings

require("after.plugins.telescope") --settings for telescope
require("after.plugins.lsp") --lsp
require("after.plugins.mini") --mini.nvim integrations


