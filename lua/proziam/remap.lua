-- File Tree
vim.keymap.set('n', '`', '<cmd>NvimTreeToggle<cr>')

-- Moving Cursor to other buffers
vim.keymap.set('n', '<C-h>', '<cmd>wincmd h<cr>', { remap = true })
vim.keymap.set('n', '<C-l>', '<cmd>wincmd l<cr>', { remap = true })
vim.keymap.set('n', '<C-j>', '<cmd>wincmd j<cr>', { remap = true })
vim.keymap.set('n', '<C-k>', '<cmd>wincmd k<cr>', { remap = true })

-- dragging highlighted values
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv") -- This may look funny with ligatures

-- Restarting the LSP (Primarily for Svelte)
vim.keymap.set('n', '<F5>', '<cmd>LspRestart<cr>', { remap = true })
