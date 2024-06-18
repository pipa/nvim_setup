-- lua/plugins/whichkey.lua

local wk = require("which-key")

wk.setup {
  plugins = {
    spelling = {
      enabled = true,
      suggestions = 20,
    },
  },
  key_labels = {},
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = "+",
  },
  window = {
    border = "none",
    position = "bottom",
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
    winblend = 0
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
    align = "left",
  },
  ignore_missing = false,
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
  show_help = true,
  triggers = "auto",
  triggers_blacklist = {
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

-- Register your keybindings
wk.register({
  b = {
    name = "Buffers",
    n = { "<cmd>BufferLineCycleNext<cr>", "Next Buffer" },
    p = { "<cmd>BufferLineCyclePrev<cr>", "Previous Buffer" },
    d = { "<cmd>bd<cr>", "Delete Buffer" },
    l = { "<cmd>Telescope buffers<cr>", "List Buffers" },
  },
  c = {
    name = "Code Actions",
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format Document" },
    r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename Symbol" },
  },
  e = { "<cmd>Neotree toggle<cr>", "File Explorer" },
  f = {
    name = "File",
    b = { "<cmd>Telescope file_browser<cr>", "File Browser" },
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    g = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "Find a string" },
    n = { "<cmd>enew<cr>", "New File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
    s = { "<cmd>w<cr>", "Save File" },
  },
  g = {
    name = "Git",
    s = { "<cmd>Git<cr>", "Status" },
    c = { "<cmd>Git commit<cr>", "Commit" },
    p = { "<cmd>Git push<cr>", "Push" },
    l = { "<cmd>Git log<cr>", "Log" },
    g = { "<cmd>LazyGit<cr>", "LazyGit" },
  },
  l = { "<cmd>Lazy<cr>", "Lazy" },
  m = { "<cmd>Mason<cr>", "Mason" },
  o = {
    name = "Other",
    t = { "<cmd>terminal<cr>", "Open Terminal" },
  },
  p = {
    name = "Project",
    f = { "<cmd>Telescope projects<cr>", "Find Project" },
    p = { "<cmd>Telescope project<cr>", "Open Project" },
  },
  s = {
    name = "Search/Replace",
    r = { "<cmd>lua require('spectre').open()<CR>", "Replace" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Replace Word" },
    p = { "<cmd>lua require('spectre').open_file_search()<CR>", "Replace in Path" },
  },
  w = {
    name = "Window",
    s = { "<cmd>split<cr>", "Horizontal Split" },
    v = { "<cmd>vsplit<cr>", "Vertical Split" },
    c = { "<cmd>close<cr>", "Close Window" },
    o = { "<cmd>only<cr>", "Close Other Windows" },
  },
}, { prefix = "<leader>" })

-- Double space for file finder
wk.register({
  ["<space><space>"] = { "<cmd>Telescope find_files<cr>", "Find File" },
})
