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
        vim.cmd.colorscheme("onedark")
    end,
}
