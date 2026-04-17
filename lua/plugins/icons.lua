return {
  {
    "nvim-mini/mini.icons", -- updated
    version = false,
    opts = {},
    lazy = true,
    specs = {
      {
        "nvim-tree/nvim-web-devicons",
        enabled = false,
        virtual = true,
      },
    },
    init = function()
      ---@diagnostic disable-next-line: duplicate-set-field
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },
}
