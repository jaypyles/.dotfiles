return {
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    quickfile = { enabled = true },
    gitbrowse = { enabled = true },
    dashboard = { enabled = false },
    notifier = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    lazygit = { enabled = false },
    picker = {
      finder = "explorer",
      hidden = true,
      supports_live = false,
      ui_select = false,
    },
  },

  keys = {
    {
      "<Space><Space>",
      function()
        Snacks.picker.git_files()
      end,
      desc = "Git Files",
    }
  }
}
