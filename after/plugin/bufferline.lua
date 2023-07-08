local status, bufferline = pcall(require, "bufferline")
if (not status) then
print("Tabs Dosent Work")
end




bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#191724',
      bg = '#1f1d2e',
    },
    separator_selected = {
      fg = '#191724',
    },
    background = {
      fg = '#657b83',
      bg = '#1f1d2e'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      underline = true,
      undercurl = true,
      italic = true
    },
    fill = {
      bg = '#191724'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})