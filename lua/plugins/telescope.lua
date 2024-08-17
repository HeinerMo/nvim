return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
  config = function()
    -- Delay the loading of `telescope.builtin` until it's actually needed
    vim.keymap.set('n', '<leader>ff', function()
      require('telescope.builtin').find_files()
    end, { desc = "Find Files" })

    vim.keymap.set('n', '<C-p>', function()
      require('telescope.builtin').git_files()
    end, { desc = "Git Files" })
  end,
}




