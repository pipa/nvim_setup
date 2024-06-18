-- lua/plugins/startuptime.lua

vim.cmd([[autocmd! User StartuptimePre * ++nested ++once  echomsg "Startup time"]])

