local auto_cmd_group = vim.api.nvim_create_augroup('MyAutoCmds', { clear = true })

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = 'init.lua',
  group = auto_cmd_group,
  command = 'source <afile>',
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*.ts',
  group = auto_cmd_group,
  command = 'Prettier',
})
