-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local cwd = vim.fn.stdpath 'config' .. '/lua/custom/plugins'

dofile(cwd .. '/keymaps.lua')
dofile(cwd .. '/commands.lua')
dofile(cwd .. '/autocmds.lua')

return {}
