local status, lualine = pcall(require, "lualine")
if (not status) then return end


local config = {
  theme = "auto",
  options = {
    component_separators = " ",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_b = {
      'filetype'
    },
    lualine_c = {
      'filename'

    },
    lualine_x = {
      'diagnostics'
    },

  },
  extensions = { "quickfix", "fugitive" },
}



-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end



local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end



ins_right {
  -- Lsp server name .
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' LSP:',
  color = { fg = '#ffffff', gui = 'bold' },
}





ins_left {
  'lsp_progress',
  display_components = { 'lsp_client_name', { 'title', 'percentage', 'message' } },
  -- With spinner
  display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' } },
  separators = {
    component = ' ',
    progress = ' | ',
    message = { pre = '(', post = ')' },
    percentage = { pre = '', post = '%% ' },
    title = { pre = '', post = ': ' },
    lsp_client_name = { pre = '[', post = ']' },
    spinner = { pre = '', post = '' },
    message = { commenced = 'In Progress', completed = 'Completed' },
  },
  display_components = { 'spinner', { 'title', 'percentage', 'message' } },
  timer = { progress_enddelay = 1000, spinner = 1000, },
  spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
}

lualine.setup(config)
