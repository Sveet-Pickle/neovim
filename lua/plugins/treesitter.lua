return {

    --language parser
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                autotag = { enable = true, },
                auto_install = true,
                ensure_installed = { "c", "lua", "vim", "markdown", "python", "vimdoc", "query", "elixir", "heex",
                    "javascript", "html" },
                sync_install = false,
                highlight = { enable = true, additional_vim_regex_highlighting = true },
                indent = { enable = true },
                foldmethod = "expr",
                foldexpr = "nvim_treesitter#foldexpr()",
                nofoldenable = true,
            })
        end
    }
}
