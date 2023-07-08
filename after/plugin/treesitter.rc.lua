local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
  print('treesitter dosent work')
end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "typescript",
    "javascript",
    "toml",
    "python",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "c_sharp",
    "markdown",
    "markdown_inline",
    "go",
    "rust",
    "prisma",
    "c",
    "cpp",
    "dart",
    "haskell"
  },
  autotag = {
    enable = true,
  },
  auto_install = false,
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
