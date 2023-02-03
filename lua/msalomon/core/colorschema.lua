local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
  print("Your colorscheme is not installed")
  return
end
