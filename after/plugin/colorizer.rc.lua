
local status, colorizer = pcall(require, "colorizer")
if (not status) then
print("Coloizer Dosent Work")
end

colorizer.setup({
  '*';
})