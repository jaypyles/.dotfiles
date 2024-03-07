return {
  "nvimtools/none-ls.nvim",
  event = "BufReadPre",
  dependencies = { "mason.nvim" },

  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.beautysh,
        nls.builtins.formatting.prettier.with({ extra_filetypes = { "svelte", "astro", "mdx", "svx" } }),
        nls.builtins.formatting.rubocop,
        nls.builtins.formatting.rustfmt,
        nls.builtins.formatting.shellharden,
        nls.builtins.formatting.sql_formatter,
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.taplo,
        nls.builtins.formatting.yamlfmt,
        nls.builtins.formatting.black,
        nls.builtins.formatting.isort,
        nls.builtins.hover.printenv,
        nls.builtins.hover.dictionary,
        nls.builtins.diagnostics.alex,
        nls.builtins.diagnostics.actionlint,
        nls.builtins.diagnostics.ansiblelint,
        nls.builtins.formatting.trim_newlines,
        nls.builtins.formatting.trim_whitespace,
      },
    }
  end,
}
