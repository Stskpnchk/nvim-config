return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "python", "javascript", "typescript", "html", "java"},
            auto_install = true,
            highlight = { enabled = true },
            indent = { enabled = true },
        })
    end
}
