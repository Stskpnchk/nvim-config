return {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "folke/trouble.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        require("chatgpt").setup({
            api_key_cmd = "pass show api/keys/chatgpt",
        })

        vim.keymap.set({ "n", "v" }, "<Leader>at", ":ChatGPTRun add_tests<CR>", {})
        vim.keymap.set({ "n", "v" }, "<Leader>ai", ":ChatGPT<CR>", {})
        vim.keymap.set("n", "<Leader>ac", ":ChatGPTCompleteCode", {})
    end,
}
