-- File Tree
vim.keymap.set('n', '`', '<cmd>NvimTreeToggle<cr>')

-- Moving Cursor to other buffers
vim.keymap.set('n', '<C-h>', '<cmd>wincmd h<cr>', { remap = true })
vim.keymap.set('n', '<C-l>', '<cmd>wincmd l<cr>', { remap = true })
vim.keymap.set('n', '<C-j>', '<cmd>wincmd j<cr>', { remap = true })
vim.keymap.set('n', '<C-k>', '<cmd>wincmd k<cr>', { remap = true })

-- Set Code Actions Keymap
vim.keymap.set('n', "<C-a>", "<cmd>lua vim.lsp.buf.code_action()<CR>")

-- dragging highlighted values
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv") -- This may look funny with ligatures

-- Restarting the LSP (Primarily for Svelte)
vim.keymap.set('n', '<F5>', '<cmd>LspRestart<cr>', { remap = true })

-- Undotree
vim.keymap.set('n', '<F8>', vim.cmd.UndotreeToggle)

-- Fugitive maps
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- Use TAB and enter key to deal with autocomplete selections
local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<TAB>'] = cmp.mapping.select_next_item(),
        ['<S-TAB>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }
})
