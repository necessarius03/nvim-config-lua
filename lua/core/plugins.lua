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

local plugins = {
   'nvim-tree/nvim-tree.lua',
   'nvim-tree/nvim-web-devicons',
   'nvim-lualine/lualine.nvim',
  -- use 'folke/tokyonight.nvim'
   'navarasu/onedark.nvim',
   'nvim-treesitter/nvim-treesitter',
   {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp", -- Autocompletion plugin
    "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
    "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
    "L3MON4D3/LuaSnip", -- Snippets plugin
    "onsails/lspkind.nvim",
   },
   {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { {'nvim-lua/plenary.nvim'} }
   },
   'glepnir/dashboard-nvim',
   'akinsho/toggleterm.nvim',
   {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons'
   },
   'folke/which-key.nvim',
   'vim-test/vim-test'
}


local opts = {}

require("lazy").setup(plugins, opts)
