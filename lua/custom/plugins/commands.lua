local utils = require 'custom.plugins.utils'

vim.api.nvim_create_user_command('EditConfig', function()
  vim.cmd ':e ~/.config/nvim/init.lua'
end, {})

vim.api.nvim_create_user_command('Test', function()
  local filename = vim.api.nvim_buf_get_name(0)
  vim.cmd(':! yarn test ' .. filename)
end, {})

vim.api.nvim_create_user_command('Prettier', function()
  local filename = vim.api.nvim_buf_get_name(0)
  vim.cmd(':silent ! yarn prettier --write ' .. filename)
end, {})

vim.api.nvim_create_user_command('RenameFile', function(param)
  local new_file_name = param.args
  local full_old_path = vim.api.nvim_buf_get_name(0)
  local path_parts = utils.split_string(full_old_path, '/')
  local new_full_path = table.concat(utils.slice(path_parts, 1, #path_parts - 1), '/') .. '/' .. new_file_name
  local command = 'mv "' .. full_old_path .. '" "' .. new_full_path .. '"'

  vim.cmd ':w'
  vim.cmd ':bd!'
  vim.cmd(':silent ! ' .. command)
  vim.cmd(':e ' .. new_full_path)
end, {
  nargs = 1,
})

vim.api.nvim_create_user_command('RunLocal', function(param)
  local command = param.args
  local new_command = 'cd "' .. utils.buffer_base_path() .. '" && ' .. command
  vim.cmd(':! ' .. new_command)
end, { nargs = 1 })
