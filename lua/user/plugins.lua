-- Plugins using Packer.nvim

-- https://github.com/wbthomason/packer.nvim#bootstrapping
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use { "wbthomason/packer.nvim", commit = "00ec5adef58c5ff9a07f11f45903b9dbbaa1b422" } -- Have packer manage itself
  use { "nvim-lua/popup.nvim", commit = "b7404d35d5d3548a82149238289fa71f7f6de4ac" } -- An implementation of the Popup API from vim in Neovim
  use { "nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" } -- Useful lua functions used ny lots of plugins
  use { "windwp/nvim-autopairs", commit = "4a95b3982be7397cd8e1370d1a09503f9b002dbf" } -- Autopairs, integrates with both cmp and treesitter
  use { "numToStr/Comment.nvim", commit = "2c26a00f32b190390b664e56e32fd5347613b9e2" } -- easily comment stuff
  use { "kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" }
  use { "kyazdani42/nvim-tree.lua", commit = "1fc0eee9465f764bd3c8fab1900efe13318b28c9" } -- file explorer
  use { "akinsho/bufferline.nvim", commit = "88c742f4af988c98aee5ac1c92f056905c636aae" } -- shows buffers as "tabs"
  use { "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" } -- linter and formatter
  use { "nvim-lualine/lualine.nvim", commit = "3362b28f917acc37538b1047f187ff1b5645ecdd" } -- status line

  use { "folke/tokyonight.nvim", commit = "8223c970677e4d88c9b6b6d81bda23daf11062bb" } -- tokyonight colorscheme

  -- cmp plugins
  use { "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" } -- The completion plugin
  use { "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" } -- buffer completions
  use { "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" } -- path completions
  use { "hrsh7th/cmp-cmdline", commit = "c36ca4bc1dedb12b4ba6546b96c43896fd6e7252" } -- cmdline completions
  use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" } -- cmp for lsp
  use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" } -- cmp for lua

  -- snippets
  use { "L3MON4D3/LuaSnip", commit = "26b95ac64ea1abb7d10706d940e3879df02972b4" } --snippet engine
  use { "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" } -- a bunch of snippets to use

  -- LSP
  use { "neovim/nvim-lspconfig", commit = "87751b32226ab3c35d6f5fb9da796f73e8cc6648" } -- enable LSP
  use { "williamboman/nvim-lsp-installer", commit = "fbd957fc4e7a054c42d37632cdb6057b309e7853" } -- simple to use language server installer

  -- Telescope
  use { "nvim-telescope/telescope.nvim", commit = "d88b44ddf14670cffa9fdb1eaca7a0429a973653" }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make', commit = "6a33ecefa9b3d9ade654f9a7a6396a00c3758ca6" }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    commit = "5c364707442965ae52a1ac89c359080e32958445",
  }
  use { "JoosepAlviste/nvim-ts-context-commentstring", commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269" }

  -- Git
  use { "lewis6991/gitsigns.nvim", commit = "5ce7db00d4c24ab090c87df985764d69d331b20f" }

  -- plugins to checkout
  -- https://github.com/akinsho/toggleterm.nvim
  -- https://github.com/ahmedkhalf/project.nvim
  -- https://github.com/lewis6991/impatient.nvim
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  -- https://github.com/goolord/alpha-nvim
  -- https://github.com/folke/which-key.nvim
  -- https://github.com/moll/vim-bbye

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)

