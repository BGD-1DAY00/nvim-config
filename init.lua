-- ~/.config/nvim/init.lua

-- Install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd([[packadd packer.nvim]])
end

-- Dummy line using to test, can be deleted later

-- Load packer
require("packer")

-- Now load your plugins file
require("plugins")

vim.opt.number = true
-- Optional: shows relative numbers based on the current line
vim.opt.relativenumber = true

-- Optional:
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
