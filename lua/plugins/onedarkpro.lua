return {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- load before other plugins
    config = function()
        require("onedarkpro").setup({
            options = {
                transparency = true, -- inherit kitty's pitch-black background
            },
        })
        vim.opt.laststatus = 3 -- global statusline (was kanagawa's globalStatus)

        -- onedark leaves neo-tree's git-status groups near Comment-grey, so
        -- modified/untracked files are hard to spot in the tree. Re-color them.
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "onedark*",
            callback = function()
                vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#e5c07b" })
                vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#56b6c2", italic = true })
                vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#98c379" })
                vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = "#e06c75" })
            end,
        })

        vim.cmd.colorscheme("onedark")
    end,
}
