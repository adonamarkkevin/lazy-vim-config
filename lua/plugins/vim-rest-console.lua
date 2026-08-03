return {
    "diepm/vim-rest-console",
    ft = "rest",
    init = function()
        vim.g.vrc_set_default_mapping = 0
        vim.g.vrc_response_default_content_type = "application/json"
        vim.g.vrc_output_buffer_name = "_OUTPUT.json"
        vim.g.vrc_curl_opts = { ["-s"] = "" }
        vim.g.vrc_auto_format_response_patterns = {
            json = "jq",
        }
    end,
    config = function()
        vim.keymap.set("n", "<leader>rr", ":call VrcQuery()<CR>", { buffer = false, silent = true })
    end,
}
