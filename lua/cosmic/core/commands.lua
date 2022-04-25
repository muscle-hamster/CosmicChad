local augroup_name = 'CosmicNvim'
local group = vim.api.nvim_create_augroup(augroup_name, { clear = true })
vim.api.nvim_create_autocmd('VimResized', {
  command = 'tabdo wincmd =',
  group = group,
})

vim.cmd([[
  command! BroUpdate lua require('cosmic.utils').update()
  command! BroReload lua require('cosmic.utils').reload_user_config(true)
  command! BroReloadSync lua require('cosmic.utils').reload_user_config_sync()
  command! LspFormat lua vim.lsp.buf.formatting()
]])
