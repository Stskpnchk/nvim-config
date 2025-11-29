vim.g.mapleader = ' '
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number relativenumber")
vim.cmd("set nu rnu")
vim.cmd("set ignorecase")

-- some default mappings
vim.keymap.set('n', '|', ':vsp<CR>', {})
