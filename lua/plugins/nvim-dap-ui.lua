return {
    "rcarriga/nvim-dap-ui",
    init = function()
        require("neodev").setup({
            library = { plugins = { "nvim-dap-ui" }, types = true },
        })
    end
}
