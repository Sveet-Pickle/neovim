return {
    -- Telescope
    -- a fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim',
            'burntsushi/ripgrep' },
        config = function()
            require("telescope").setup {
                extensions = {
                    fzf = {},
                    file_browser = {
                        hijack_netrw = true,
                    }
                }
            }
            require('telescope').load_extension('file_browser')
        end
    }
}
