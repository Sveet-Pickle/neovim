return {
    "nvim-lualine/lualine.nvim",
        lazy = false,
        priority = 1000,
        dependencies = { "nvim-tree/nvim-web-devicons"}, 
        config = function()
            require("lualine").setup()
        end
}
