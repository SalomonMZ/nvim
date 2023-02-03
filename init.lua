-- Packer config
require('msalomon.plugins-setup')

-- [[ Setting options ]]
-- See `:help vim.o`
require('msalomon.core.options')

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
require('msalomon.core.keymaps')

-- Set colorscheme
require('msalomon.core.colorschema')

-- Config plugins install
--
-- Set lualine as statusline
-- See `:help lualine.txt`
require('msalomon.plugins.lualine')

-- Enable Comment.nvim
require('msalomon.plugins.comment')

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
require('msalomon.plugins.indent')

-- Gitsigns
-- See `:help gitsigns.txt`
require('msalomon.plugins.gitsigns')

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('msalomon.plugins.telescope')

-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require('msalomon.plugins.treesitter')

-- Nvim-tree
require('msalomon.plugins.nvim-tree')

-- LSP settings.
require('msalomon.plugins.lsp')

-- Autopairs setup
require('msalomon.plugins.nvim-autopairs')
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
