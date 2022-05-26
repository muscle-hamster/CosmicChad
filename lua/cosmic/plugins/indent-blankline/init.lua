require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    indent_blankline_use_treesitter = true,
    show_current_context = false,
    show_current_context_start = false,
    show_end_of_line = false,
    vim.cmd [[ autocmd Filetype php setlocal tabstop=4 softtabstop=4 shiftwidth=4 ]]
}
