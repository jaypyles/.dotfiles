return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-\>]],
        insert_mappings = true, -- optional
        direction = "float", -- optional
        -- additional options go here
      })
    end,
  },
}
