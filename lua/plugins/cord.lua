return {
  "vyfor/cord.nvim",
  event = "VeryLazy",
  opts = {
    log_level = vim.log.levels.OFF,
    display = {
      theme = "default",
      flavor = "dark",
      view = "full",
    },
    timestamp = {
      enabled = true,
      reset_on_idle = true,
      reset_on_change = false,
    },
    idle = {
      enabled = true,
      timeout = 1800000, -- 30 min
      details = "Idling",
      tooltip = "Taking a break",
    },
    text = {
      workspace = function(opts)
        return "In " .. opts.workspace
      end,
      viewing = function(opts)
        return "Viewing " .. opts.filename
      end,
      editing = function(opts)
        return "Editing " .. opts.filename
      end,
      file_browser = function(opts)
        return "Browsing files in " .. opts.name
      end,
      plugin_manager = function(opts)
        return "Managing plugins in " .. opts.name
      end,
      terminal = function(opts)
        return "Running commands in " .. opts.name
      end,
    },
    buttons = {
      {
        label = "View Repository",
        url = function(opts)
          return opts.repo_url
        end,
      },
    },
    advanced = {
      discord = {
        reconnect = {
          enabled = true,
          interval = 5000,
          initial = true,
        },
      },
    },
  },
}
