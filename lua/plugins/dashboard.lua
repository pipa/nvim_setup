-- lua/plugins/dashboard.lua

local db = require('dashboard')
local logo = [[
 ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗
 ██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝
██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗
██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝
 ╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗
  ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝

██╗     ██╗   ██╗██╗███████╗██╗
██║     ██║   ██║██║██╔════╝██║
██║     ██║   ██║██║███████╗██║
██║     ██║   ██║██║╚════██║╚═╝
███████╗╚██████╔╝██║███████║██╗
╚══════╝ ╚═════╝ ╚═╝╚══════╝╚═╝
]]
logo = string.rep("\n", 8) .. logo .. "\n\n"

local opts = {
  theme = 'doom',
  hide = {
    -- this is taken care of by lualine
    -- enabling this messes up the actual laststatus setting after loading a file
    statusline = false,
  },
  config = {
    header = {
      type = "text",
      val = vim.split(logo, "\n"),
      opts = {
        position = "center",
        hl = "DashboardHeader",
      },
    },
    center = {
      {
        icon = '  ',
        icon_hl = 'DashboardFooter',
        desc = 'Load last session                        ',
        desc_hl = 'DashboardFooter',
        action = 'lua require("persistence").load()',

      },
      {
        icon = '  ',
        icon_hl = 'DashboardCenter',
        desc = 'Recently opened files                   ',
        desc_hl = 'DashboardCenter',
        action = 'Telescope oldfiles',
      },
      {
        icon = '  ',
        icon_hl = 'DashboardCenter',
        desc = 'Find File                               ',
        desc_hl = 'DashboardCenter',
        action = 'lua require("telescope.builtin").find_files()',
      },
      {
        icon = '  ',
        icon_hl = 'DashboardCenter',
        desc = 'File Browser                            ',
        desc_hl = 'DashboardCenter',
        action = 'Neotree toggle',
      },
      {
        icon = '  ',
        icon_hl = 'DashboardCenter',
        desc = 'Find word                               ',
        desc_hl = 'DashboardCenter',
        action = 'Telescope live_grep',
      },
    },
    footer = {
      type = "text",
      val = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { "⚡ Neovim loaded " .. stats.loaded .. " plugins in " .. ms .. "ms" }
      end,
      opts = {
        position = "center",
        hl = "DashboardFooter",
      },
    },
  }
}

-- for _, button in ipairs(opts.config.center) do
--   button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
--   button.key_format = "  %s"
-- end

db.setup = opts
