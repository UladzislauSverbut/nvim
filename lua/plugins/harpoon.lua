return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    local function is_harpoon_file(path)
      for _, item in ipairs(harpoon:list().items) do
        if item.value == path then
          return true
        end
      end
      return false
    end

    local function clean_buffers()
      local current = vim.api.nvim_get_current_buf()

      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if buf ~= current and vim.api.nvim_buf_is_loaded(buf) then
          local name = vim.api.nvim_buf_get_name(buf)

          if name ~= "" and not is_harpoon_file(name) then
            pcall(vim.api.nvim_buf_delete, buf, { force = false })
          end
        end
      end
    end

    vim.api.nvim_create_autocmd("FocusLost", {
      callback = clean_buffers,
    })
  end,
}
