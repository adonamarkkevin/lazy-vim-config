return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    lazy = false,
    config = function()
        require("mason-tool-installer").setup({
            -- Formatters / linters used by none-ls.lua (LSP servers live in
            -- lspconfig.lua via mason-lspconfig `ensure_installed`).
            ensure_installed = {
                "stylua",
                "prettier",
                "goimports",
                "gofumpt",
                "golines",
                "golangci-lint",
                "gomodifytags",
                "impl",
                -- erb-lint: needs a Ruby toolchain, install manually if needed:
                --   gem install erb_lint
                -- mbake: not in the Mason registry, install manually:
                --   pipx install mbake
            },
            run_on_start = true,
            start_delay = 3000,
        })
    end,
}
