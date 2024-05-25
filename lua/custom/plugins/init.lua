-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local plugins = {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {}
    end,
  },
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },
  -- open files at the same location they were closed
  'farmergreg/vim-lastplace',
  { 'f-person/git-blame.nvim', opts = { enabled = false } },
  { 'nvim-treesitter/nvim-treesitter-context' },
}
vim.keymap.set('n', 'gp', ':GitBlameToggle<CR>', { desc = '[gp] toggle git praise (blame)' })

return plugins
