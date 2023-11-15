return {
    "williamboman/mason.nvim",
    cmd = "Mason",
    event = "BufReadPre",
    init = function()
        require("mason").setup()
    end,
    config = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    },
}
