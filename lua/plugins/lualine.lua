return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
        vim.o.showtabline = 2

        return {
            options = {
                icons_enabled = false,
                theme = "auto",
                component_separators = "",
                section_separators = "",
                tabline = true,
                disabled_filetypes = {},
            },
            sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {
                lualine_a = {
                    {
                        "branch",
                    },
                },
                lualine_b = {
                    "%=",
                },
                lualine_c = {
                    {
                        "filename",
                        path = 1,
                    },
                },
                lualine_x = {
                    function()
                        return os.date("%H:%M")
                    end,
                },
            },
        }
    end,
}
