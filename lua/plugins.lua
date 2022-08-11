
local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
else
  print('Packer is working')
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
 use 'wbthomason/packer.nvim',
end)