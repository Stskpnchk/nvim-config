return {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    opts = {
        terminal = {
            split_side = "right",
            split_width_percentage = 0.30,
            provider = "snacks",
        },
    },
    keys = {
        { "<leader>ac", "<cmd>ClaudeCodeFocus<cr>", desc = "Toggle Claude terminal", mode = { "n", "x" } },
        { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
        { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume conversation" },
        { "<leader>as", "<cmd>ClaudeCodeSend<cr>", desc = "Send selection to Claude", mode = "v" },
        { "<leader>ab", "<cmd>ClaudeCodeAdd<cr>", desc = "Add buffer to context" },
        { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
        { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
}
