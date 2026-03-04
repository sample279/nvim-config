return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = false, -- Disable scrolling animations
    },
    picker = {
      sources = {
        files = {
          ignored = false, -- don't show gitignored/ignored files
          hidden = true, -- show hidden files
        },
      },
    },
  },
}
