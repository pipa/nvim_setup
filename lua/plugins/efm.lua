-- lua/plugins/efm.lua

local lspconfig = require('lspconfig')

local eslint = {
  lintCommand = 'eslint -f unix --stdin --stdin-filename ${INPUT}',
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %m' },
}

local prettier = {
  formatCommand = 'prettier --stdin-filepath ${INPUT}',
  formatStdin = true,
}

local stylelint = {
  lintCommand = 'stylelint --formatter unix --stdin --stdin-filename ${INPUT}',
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %m' },
}

local flake8 = {
  lintCommand = 'flake8 --stdin-display-name ${INPUT} -',
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %m' },
}

local black = {
  formatCommand = 'black --quiet -',
  formatStdin = true,
}

local shfmt = {
  formatCommand = 'shfmt -i 2 -ci -bn',
  formatStdin = true,
}

local luafmt = {
  formatCommand =
  'lua-format -i --column-limit=80 --indent-width=2 --keep-simple-function-one-line --align-table-field=false --align-args=false --align-parameter=false --align-function-define-params=false --align-continuous-assign-statement=false',
  formatStdin = true,
}

local sqlfmt = {
  formatCommand = 'sqlformat -',
  formatStdin = true,
}

local markdownlint = {
  lintCommand = 'markdownlint -s -',
  lintStdin = true,
  lintFormats = { '%f:%l %m', '%f:%l:%c %m' },
}

local perltidy = {
  formatCommand = 'perltidy',
  formatStdin = true,
}

local hadolint = {
  lintCommand = 'hadolint -',
  lintStdin = true,
  lintFormats = { '%f:%l %m' },
}

lspconfig.efm.setup {
  init_options = { documentFormatting = true, codeAction = true },
  settings = {
    rootMarkers = { '.git/' },
    languages = {
      javascript = { eslint, prettier },
      typescript = { eslint, prettier },
      vue = { eslint, prettier },
      css = { stylelint, prettier },
      scss = { stylelint, prettier },
      html = { prettier },
      json = { prettier },
      yaml = { prettier },
      markdown = { markdownlint, prettier },
      lua = { luafmt },
      python = { flake8, black },
      sh = { shfmt },
      sql = { sqlfmt },
      perl = { perltidy },
      dockerfile = { hadolint },
      ['javascriptreact'] = { eslint, prettier },
      ['typescriptreact'] = { eslint, prettier },
    },
  },
  filetypes = { 'javascript', 'typescript', 'vue', 'css', 'scss', 'html', 'json', 'yaml', 'markdown', 'lua', 'python', 'sh', 'sql', 'perl', 'dockerfile', 'javascriptreact', 'typescriptreact' },
}
