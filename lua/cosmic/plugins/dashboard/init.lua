local icons = require('cosmic.theme.icons')
local g = vim.g

g.dashboard_custom_header = {
  '',
  '',
  '',
  '',
  '',
  '',
 '  ██████  ██████   ██████   ██████  ██████   █████  ███    ███ ███    ███ ███████ ██████     ███    ██ ██    ██ ██ ███    ███',
 '  ██   ██ ██   ██ ██    ██ ██       ██   ██ ██   ██ ████  ████ ████  ████ ██      ██   ██    ████   ██ ██    ██ ██ ████  ████',
 '  ██████  ██████  ██    ██ ██   ███ ██████  ███████ ██ ████ ██ ██ ████ ██ █████   ██████     ██ ██  ██ ██    ██ ██ ██ ████ ██',
 '  ██   ██ ██   ██ ██    ██ ██    ██ ██   ██ ██   ██ ██  ██  ██ ██  ██  ██ ██      ██   ██    ██  ██ ██  ██  ██  ██ ██  ██  ██',
 '  ██████  ██   ██  ██████   ██████  ██   ██ ██   ██ ██      ██ ██      ██ ███████ ██   ██ ██ ██   ████   ████   ██ ██      ██',
 '                                                                                                                           ',
  '',
  '',
  '',
}

g.dashboard_default_executive = 'telescope'

g.dashboard_session_directory = vim.fn.stdpath('data') .. '/sessions'

g.dashboard_custom_section = {
  find_file = {
    description = { icons.file1 .. ' Find File           <leader>ff' },
    command = 'lua require("cosmic.plugins.telescope.mappings").project_files()',
  },
  file_explorer = {
    description = { icons.file2 .. ' File Manager        <C-n>     ' },
    command = 'NvimTreeToggle',
  },
  find_string = {
    description = { icons.word .. ' Grep String         <leader>fs' },
    command = 'Telescope grep_string',
  },
  last_session = {
    description = { icons.clock .. ' Load Session        <leader>sl' },
    command = 'lua vim.cmd(":silent RestoreSession")',
  },
}

-- g.dashboard_custom_footer = { '💫 github.com/CosmicNvim/CosmicNvim' }
