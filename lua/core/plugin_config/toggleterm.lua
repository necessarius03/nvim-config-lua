require('toggleterm').setup {
  size = 10,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  close_on_exit = true,
  autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
  direction = "horizontal",
}
