if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "harrisoncramer/gitlab.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "stevearc/dressing.nvim", -- Recommended but not required. Better UI for pickers.
    "nvim-tree/nvim-web-devicons" -- Recommended but not required. Icons in discussion tree.
  },
  enabled = true,
  build = function () require("gitlab.server").build(true) end, -- Builds the Go binary
  config = function()
    require("gitlab").setup({
      auth_provider = function()
        return "secret", nil, nil
      end,
    })
  end,
  keys = {
    {
      mode = { "n" },
      "<leader>glb",
      "<cmd>lua require('gitlab').choose_merge_request()<cr>",
      desc = "Browse Merge Requests"
    },
    {
      mode = { "n" },
      "<leader>glr",
      "<cmd>lua require('gitlab').review()<cr>",
      desc = "Review Merge Request"
    },
    {
      mode = { "n" },
      "<leader>gls",
      "<cmd>lua require('gitlab').summary()<cr>",
      desc = "View Merge Request Summary"
    },
    {
      mode = { "n" },
      "<leader>glA",
      "<cmd>lua require('gitlab').approve()<cr>",
      desc = "Approve Merge Request"
    },
    {
      mode = { "n" },
      "<leader>glR",
      "<cmd>lua require('gitlab').revoke()<cr>",
      desc = "Revoke Merge Request Approval"
    },
    {
      mode = { "n" },
      "<leader>glc",
      "<cmd>lua require('gitlab').create_comment()<cr>",
      desc = "Create Comment"
    },
    {
      mode = { "v" },
      "<leader>glc",
      "<cmd>lua require('gitlab').create_multiline_comment()<cr>",
      desc = "Create Multiline Comment"
    },
    {
      mode = { "v" },
      "<leader>glC",
      "<cmd>lua require('gitlab').create_comment_suggestion()<cr>",
      desc = "Create Comment Suggestion"
    },
    {
      mode = { "n" },
      "<leader>glO",
      "<cmd>lua require('gitlab').create_mr()<cr>",
      desc = "Create Merge Request"
    },
    {
      mode = { "n" },
      "<leader>glm",
      "<cmd>lua require('gitlab').move_to_discussion_tree_from_diagnostic()<cr>",
      desc = "Move to Discussion Tree from Diagnostic"
    },
    {
      mode = { "n" },
      "<leader>gln",
      "<cmd>lua require('gitlab').create_note()<cr>",
      desc = "Create Note"
    },
    {
      mode = { "n" },
      "<leader>gld",
      "<cmd>lua require('gitlab').toggle_discussions()<cr>",
      desc = "Toggle Discussions"
    },
    {
      mode = { "n" },
      "<leader>glaa",
      "<cmd>lua require('gitlab').add_assignee()<cr>",
      desc = "Add Assignee"
    },
    {
      mode = { "n" },
      "<leader>glad",
      "<cmd>lua require('gitlab').delete_assignee()<cr>",
      desc = "Delete Assignee"
    },
    {
      mode = { "n" },
      "<leader>glla",
      "<cmd>lua require('gitlab').add_label()<cr>",
      desc = "Add Label"
    },
    {
      mode = { "n" },
      "<leader>glld",
      "<cmd>lua require('gitlab').delete_label()<cr>",
      desc = "Delete Label"
    },
    {
      mode = { "n" },
      "<leader>glra",
      "<cmd>lua require('gitlab').add_reviewer()<cr>",
      desc = "Add Reviewer"
    },
    {
      mode = { "n" },
      "<leader>glrd",
      "<cmd>lua require('gitlab').delete_reviewer()<cr>",
      desc = "Delete Reviewer"
    },
    {
      mode = { "n" },
      "<leader>glp",
      "<cmd>lua require('gitlab').pipeline()<cr>",
      desc = "View Pipeline"
    },
    {
      mode = { "n" },
      "<leader>glo",
      "<cmd>lua require('gitlab').open_in_browser()<cr>",
      desc = "Open in Browser"
    },
    {
      mode = { "n" },
      "<leader>glM",
      "<cmd>lua require('gitlab').merge()<cr>",
      desc = "Merge Merge Request"
    },
    {
      mode = { "n" },
      "<leader>glu",
      "<cmd>lua require('gitlab').copy_mr_url()<cr>",
      desc = "Copy Merge Request URL"
    },
    {
      mode = { "n" },
      "<leader>glP",
      "<cmd>lua require('gitlab').publish_all_drafts()<cr>",
      desc = "Publish All Drafts"
    },
    {
      mode = { "n" },
      "<leader>glD",
      "<cmd>lua require('gitlab').toggle_draft_mode()<cr>",
      desc = "Toggle Draft Mode"
    },
  },
}
