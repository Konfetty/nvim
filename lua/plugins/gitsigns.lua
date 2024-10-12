return {
  "lewis6991/gitsigns.nvim",
  event = "User AstroGitFile",
  keys = function() 
    return {
      { "<leader>gB", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toggle line blame" },
      { "<leader>gb", "<cmd>Gitsigns blame_line<cr>", desc = "Popup line blame" },
    }
  end,
}

