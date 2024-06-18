-- lua/plugins/bufferline.lua

require('bufferline').setup {
  options = {
    hover = {
      enabled = true,
      delay = 200,
      reveal = { 'close' }
    },
    diagnostics = "nvim_lsp",
    separator_style = "slant",
    color_icons = true,
    show_buffer_icons = true,
    show_close_icon = false,
    show_tab_indicators = true,
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or ""
      return " " .. icon .. count
    end
  },
  highlights = {
    buffer_selected = {
      underline = true,
      undercurl = false,
      bold = false,
      italic = false,
      fg = '#ff5f5f', -- this is the underline
    },
  },
}
