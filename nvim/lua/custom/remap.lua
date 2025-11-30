vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)                                               -- project view
vim.keymap.set('n', '<leader>tt', '<Cmd>ToggleTerm<CR>', { noremap = true, silent = true }) -- toggle terminal
-- vim.keymap.set('n', 'J', ':m .+1<CR>==')                                                    -- move line up(n)
-- vim.keymap.set('n', 'K', ':m .-2<CR>==')                                                    -- move line down(n)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- move line down(v)

-- Navigate vim panes better
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<c-j>', ':TmuxNavigateDown<CR>')
vim.keymap.set('n', '<c-k>', ':TmuxNavigateUp<CR>')
vim.keymap.set('n', '<c-l>', ':TmuxNavigateRight<CR>')
vim.keymap.set('n', '<c-\\>', ':TmuxNavigatePrevious<CR>')

-- LSP Rename
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'LSP: Rename symbol' })
