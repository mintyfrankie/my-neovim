pcall(
    vim.cmd,
    [[
        au FileType sml setlocal conceallevel=2
        let g:sml_greek_tyvar_show_tick=1
        let g:sml_auto_create_def_use='always'
    ]]
)
