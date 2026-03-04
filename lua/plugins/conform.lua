return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- JavaScript / TypeScript
      javascript = { "biome" },
      javascriptreact = { "biome" },
      typescript = { "biome" },
      typescriptreact = { "biome" },
      json = { "biome" },

      -- C / C++
      c = { "clang_format" },
      cpp = { "clang_format" },

      -- Lua
      lua = { "stylua" },

      -- Shell
      sh = { "shfmt" },
      bash = { "shfmt" },

      -- SQL (Postgres)
      sql = { "pg_format" },

      -- disbale fish_indent
      fish = {},
    },
  },
}
