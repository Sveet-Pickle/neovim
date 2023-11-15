return {
    "vimwiki/vimwiki",
    event = "Bufenter *.md",
    lazy = true,
    init = function()
        vim.g.vimwiki_list = {
            {
                path = "~/Dropbox/Wiki/",
                syntax = "markdown",
                ext = ".md"
            }
        }
    end
}

