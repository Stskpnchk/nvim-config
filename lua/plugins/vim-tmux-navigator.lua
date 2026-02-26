return {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc = "Navigate left" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc = "Navigate down" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc = "Navigate up" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc = "Navigate right" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "Navigate previous" },
    },
    config = function()
        vim.keymap.set("t", "<c-h>", "<c-\\><c-n><cmd>TmuxNavigateLeft<cr>", { desc = "Navigate left" })
        vim.keymap.set("t", "<c-j>", "<c-\\><c-n><cmd>TmuxNavigateDown<cr>", { desc = "Navigate down" })
        vim.keymap.set("t", "<c-k>", "<c-\\><c-n><cmd>TmuxNavigateUp<cr>", { desc = "Navigate up" })
        vim.keymap.set("t", "<c-l>", "<c-\\><c-n><cmd>TmuxNavigateRight<cr>", { desc = "Navigate right" })
    end,
}
