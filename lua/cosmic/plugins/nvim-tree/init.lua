local config = require('cosmic.core.user')
local g = vim.g
local icons = require('cosmic.theme.icons')
local u = require('cosmic.utils')
local augroup_name = 'CosmicNvimNvimTree'
local group = vim.api.nvim_create_augroup(augroup_name, { clear = true })

-- settings
--[[ g.nvim_tree_refresh_wait = 300 ]]

-- set up args
local args = {
  diagnostics = {
    enable = true,
  },
  ignore_ft_on_setup = {
    'startify',
    'dashboard',
    'alpha',
  },
  update_focused_file = {
    enable = true,
  },
  view = {
    width = 35,
    number = true,
    relativenumber = true,
  },
  git = {
    ignore = true,
  },
}

vim.api.nvim_create_autocmd('BufEnter', {
  command = [[if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]],
  group = group,
  nested = true,
})

require('nvim-tree').setup(u.merge(args, config.nvim_tree or {
  respect_buf_cwd = true,
  git_highlight = true,
  render = {
    default = '',
    symlink = icons.symlink,
    git = icons.git,
    folder = icons.folder,

    lsp = {
      hint = icons.hint,
      info = icons.info,
      warning = icons.warn,
      error = icons.error,
    },
  }
}))
