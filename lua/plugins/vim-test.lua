return {
    "vim-test/vim-test",
    dependencies = {
        "preservim/vimux",
    },
    config = function()
        vim.cmd("let test#strategy = 'vimux'")
        vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", { desc = "Test nearest" })
        vim.keymap.set("n", "<leader>T", ":TestFile<CR>", { desc = "Test file" })
        vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", { desc = "Test suite" })
        vim.keymap.set("n", "<leader>L", ":TestLast<CR>", { desc = "Test last" })
        vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", { desc = "Visit test file" })
    end,
}
