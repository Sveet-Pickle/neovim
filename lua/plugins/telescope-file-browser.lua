return {
    -- Telescope File Browser
    -- A file Browser
    {
        "nvim-telescope/telescope-file-browser.nvim",
        lazy = false,
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        setup = function()
            require("telescope").setup()
            require("telescope").load_extension "file_browser"
        end,
    }
}
