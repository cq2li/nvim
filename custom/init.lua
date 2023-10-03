-- functions --
---- map
---- https://www.reddit.com/r/neovim/comments/xilic1/converting_vimscript_inoremap_to_lua/ 
local map = function(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = false }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set colour column at 100 characters
vim.opt.colorcolumn = '100'

-- enable delta line numbers
vim.wo.relativenumber = true

-- enable ctrl j to exit insert or visual mode
vim.keymap.set('i','<C-I>', '<Esc>')
vim.keymap.set('v','<C-I>', '<Esc>')

-- enable ctrl l to remove highlighting
-- map('', '<C-L>', ':noh<CR>')

-- enable tabbing in insert mode
vim.keymap.set('i','<Tab>', '<Tab>')
