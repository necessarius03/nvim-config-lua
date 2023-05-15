local present, bufferline = pcall(require, "bufferline")
if not present then return end

bufferline.setup({
    options = {
        diagnostics = "nvim_lsp",
        show_close_icon = false,
        separator_style = "slant", -- "thick" "thin" "slant"
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                padding = 1,
                text_align = "center"
            }, {
                filetype = "neo-tree",
                text = "File Explorer",
                highlight = "Directory",
                padding = 1,
                text_align = "left"
            }
        },
        sort_by = "directory" -- 'id' | 'extension' | 'relative_directory'
    }
})
