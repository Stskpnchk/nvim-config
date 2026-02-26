return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "ruff",
                    "ts_ls",
                    "pyright",
                    "emmet_language_server",
                    -- "vscode-eslint",
                    "jdtls",
                    "kotlin_language_server",
                    "eslint",
                    "ansible-language-server",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })
            lspconfig.ruff.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                -- capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
                -- pyright = {
                --     disableOrganizeImports = true,
                -- },
                -- python = {
                --     ignore = {
                --         "*",
                --     },
                -- },
            })
            lspconfig.emmet_language_server.setup({
                capabilities = capabilities,
            })
            lspconfig.jdtls.setup({
                capabilities = capabilities,
            })
            lspconfig.kotlin_language_server.setup({
                capabilities = capabilities,
            })

            lspconfig.ansible_language_server.setup({})
            -- lspconfig.eslint.setup({
            -- 	capabilities = capabilities,
            -- })

            vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover info" })
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
            vim.keymap.set("n", "<leader>lH", vim.lsp.buf.signature_help, { desc = "Signature help" })
            vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { desc = "Add workspace folder" })
            vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Type definition" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
            vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Line diagnostics" })
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
            vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, { desc = "Diagnostics loclist" })
            vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "Code action" })
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename symbol" })
        end,
    },
}
