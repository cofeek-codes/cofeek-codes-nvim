local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  theme = "catppuccin",
  options = {
    component_separators = " ",
    section_separators = { left = "", right = "" },
  },
  extensions = { "quickfix", "fugitive" },
}
