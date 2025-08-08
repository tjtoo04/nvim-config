return {
  "stevearc/conform.nvim",
  opts = {
    lsp_format = "never",
    formatters_by_ft = {
      javascript = { "biome" },
      javascriptreact = { "biome" },
      typescript = { "biome" },
      typescriptreact = { "biome" },
      vue = { "prettier" }, -- handles <template>, <script>, <style>
      html = { "prettier" }, -- just in case you edit standalone HTML files
      css = { "prettier" },
      scss = { "prettier" },
      json = { "prettier" },
    },
    formatters = {
      biome = {
        command = "biome",
        args = { "format", "--stdin-file-path", "$FILENAME" },
        stdin = true,
      },
      prettier = {
        command = "prettier",
        args = { "--stdin-filepath", "$FILENAME" },
        stdin = true,
      },
    },
  },
}
