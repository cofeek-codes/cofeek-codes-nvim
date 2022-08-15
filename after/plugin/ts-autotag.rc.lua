local status, autotag = pcall(require, "nvim-ts-autotag")
if (not status) then
print("Autotag Dosent Work")
end

autotag.setup({})