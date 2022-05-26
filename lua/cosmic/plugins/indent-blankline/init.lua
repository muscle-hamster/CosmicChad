require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    indent_blankline_use_treesitter = true,
    vim.cmd [[ autocmd Filetype php setlocal tabstop=4 softtabstop=4 shiftwidth=4 ]]
}
