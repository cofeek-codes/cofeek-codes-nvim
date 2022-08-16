local themer = require("themer")
if (not themer) then
  print("themer dosent work")
end

themer.setup({
  enable_installer = true,
  colorscheme = "dracula",
  styles = {
    ["function"]    = { style = 'italic' },
    functionbuiltin = { style = 'italic' },
    variable        = { style = 'italic' },
    variableBuiltIn = { style = 'italic' },
    parameter       = { style = 'italic' },
  },
})
