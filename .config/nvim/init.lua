-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Load the "nightly" plugin configuration before the colorscheme
require("nightly").setup({
  color = "blue",
  transparent = false,
  styles = {
    comments = { italic = true },
    functions = { italic = false },
    keywords = { italic = false },
    variables = { italic = false },
  },
  highlights = {
    -- add or override highlights
    -- Normal = { bg = "#000000" }
  },
})

-- Load "drop"
require("drop").setup({
  theme = "summer",
  max = "20",
})

require("lspconfig").racket_langserver.setup({})
require("ollama-nvim")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { "utf-16" }
require("lspconfig").clangd.setup({ capabilities = capabilities })


-- Load the colorscheme after the configuration
-- vim.cmd "colorscheme lushwal"
-- require("lushwal").add_reload_hook {
--   vim.cmd "LushwalCompile",
-- }
vim.cmd("colorscheme nightfly")

-- disable whole line highlighting
vim.o.cursorline = false

--fix terraform and hcl comment string
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("FixTerraformCommentString", { clear = true }),
  callback = function(ev)
    vim.bo[ev.buf].commentstring = "# %s"
  end,
  pattern = { "esdl", "hcl" },
})

require("neo-tree").setup({
  enable_git_status = false,
})
