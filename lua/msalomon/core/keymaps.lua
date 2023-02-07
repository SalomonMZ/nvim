--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Easy navigation between splits
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', {desc = 'Switch to right split'})
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', {desc = 'Switch to left split'})
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', {desc = 'Switch to bottom split'})

-- Easy scrolling
vim.keymap.set('n', '<A-j>', '<C-e>', {desc = 'Scroll down the page'})
vim.keymap.set('n', '<A-k>', '<C-y>', {desc = 'Scroll up the page'})

-- Personal mappings
vim.keymap.set('n', 'Q', ':q!<CR>', {desc = '[Q]uit the file without save'})
vim.keymap.set('n', 'S', ':w!<CR>', {desc = '[S]ave the file forcefully'})

-- Telescope keymaps
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Nvim-tree keymaps
vim.keymap.set('n', '<leader>b', ':NvimTreeToggle<CR>', {desc = 'Toggle the file explorer'} )

-- vim-maximizer
vim.keymap.set('n','<leader>sm', ':MaximizerToggle<CR>', {desc = 'Toggle window'})
