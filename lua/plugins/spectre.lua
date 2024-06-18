-- lua/plugins/spectre.lua

require('spectre').setup({
  color_devicons = true,
  open_cmd = 'vnew',
  live_update = false, -- auto execute search again when you write any file in vim
  line_sep_start = '┌-----------------------------------------',
  result_padding = '¦  ',
  line_sep = '└-----------------------------------------',
  highlight = {
    ui = "String",
    search = "DiffChange",
    replace = "DiffDelete"
  },
  mapping = {
    ['toggle_line'] = {
      map = "t",
      cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
      desc = "toggle current item"
    },
    ['enter_file'] = {
      map = "<CR>",
      cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
      desc = "open file"
    },
    ['send_to_qf'] = {
      map = "Q",
      cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
      desc = "send all items to quickfix"
    },
    ['replace_cmd'] = {
      map = "c",
      cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
      desc = "input replace vim command"
    },
    ['show_option_menu'] = {
      map = "o",
      cmd = "<cmd>lua require('spectre').show_options()<CR>",
      desc = "show option"
    },
    ['run_current_replace'] = {
      map = "R",
      cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
      desc = "replace current line"
    },
    ['run_replace'] = {
      map = "r",
      cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
      desc = "replace all"
    },
    ['change_view_mode'] = {
      map = "v",
      cmd = "<cmd>lua require('spectre').change_view()<CR>",
      desc = "change result view mode"
    },
  },
  find_engine = {
    ['rg'] = {
      cmd = "rg",
      args = {
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
      },
      options = {
        ['ignore-case'] = {
          value = "--ignore-case",
          icon = "[I]",
          desc = "ignore case"
        },
        ['hidden'] = {
          value = "--hidden",
          icon = "[H]",
          desc = "hidden file"
        },
      },
    },
  },
  replace_engine = {
    ['sed'] = {
      cmd = "sed",
      args = nil
    },
    options = {
      ['ignore-case'] = {
        value = "--ignore-case",
        icon = "[I]",
        desc = "ignore case"
      },
    },
  },
  default = {
    find = {
      cmd = "rg",
      options = { "ignore-case" }
    },
    replace = {
      cmd = "sed"
    }
  },
  replace_vim_cmd = "cdo",
  is_open_target_win = true, --open file on opener window
  is_insert_mode = false,    -- start open panel on is_insert_mode
})
