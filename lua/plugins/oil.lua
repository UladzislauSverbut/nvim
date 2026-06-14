return {
  {
    "stevearc/oil.nvim",
    opts = {
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      prompt_save_on_select_new_entry = false,
    },
    keys = {
      {
        "<leader>e",
        "<cmd>Oil<CR>",
        desc = "Open Oil",
      },
    },
    keymaps = {
      ["h"] = "actions.parent", -- go up to parent directory
      ["l"] = "actions.select", -- replace Enter: open file / enter directory
      ["<CR>"] = "actions.select", -- optionally keep Enter as well

      ["~"] = "actions.open_cwd", -- open current working directory

      ["p"] = "actions.preview", -- preview file / directory

      -- go back in navigation history (if using built-in oil history)
      ["b"] = "actions.navigate_prev",
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
