local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then
print("Autopairs Dosent Work")
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
