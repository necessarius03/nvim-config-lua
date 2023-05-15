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
    --file explorer
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',

    --interface
    'glepnir/dashboard-nvim',
    'navarasu/onedark.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-lualine/lualine.nvim',

    --auto completion plugins
    "hrsh7th/nvim-cmp", -- Autocompletion plugin
    "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
    "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
    'ray-x/lsp_signature.nvim',
    'windwp/nvim-autopairs',
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "onsails/lspkind.nvim",
    "glepnir/lspsaga.nvim",
--    'neoclide/coc.nvim',

    --Snippets plugin
    'rafamadriz/friendly-snippets',
    {
  	"L3MON4D3/LuaSnip",
  	version = "1.*", --first number of latest release
  	build = "make install_jsregexp" -- install jsregexp (optional!).
    },

    {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    'akinsho/toggleterm.nvim',
    {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons'
    },
    'folke/which-key.nvim',
--    'vim-test/vim-test',
    'andweeb/presence.nvim',

--    'lukas-reineke/indent-blankline.nvim',
    --Csharp language
    'OmniSharp/omnisharp-vim',
}

local opts = {}

require("lazy").setup(plugins, opts)
