return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- biome formatting
      javascript = { "biome" },
      javascriptreact = { "biome" },
      typescript = { "biome" },
      typescriptreact = { "biome" },
      json = { "biome" },

      -- prettier formatting
      graphql = { "prettier" },

      -- clang formatting
      c = { "clang_format" },
      cpp = { "clang_format" },

      lua = { "stylua" },

      sh = { "shfmt" },
      bash = { "shfmt" },

      sql = { "pg_format" },

      fish = {},
    },
  },
}
