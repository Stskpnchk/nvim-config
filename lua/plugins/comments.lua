return {
    "numToStr/Comment.nvim",
    lazy = false,
    config = function()
        require("Comment").setup({
            ---LHS of toggle mappings in NORMAL mode
            toggler = {
                ---Line-comment toggle keymap
                line = "<Leader>/",
                ---Block-comment toggle keymap
                -- block = "gbc",
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                ---Line-comment keymap
                line = "<Leader>/",
                ---Block-comment keymap
                -- block = "gb",
            },
        })
    end,
}
