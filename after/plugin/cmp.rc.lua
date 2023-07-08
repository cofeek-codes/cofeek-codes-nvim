local status, cmp = pcall(require, "cmp")
if (not status) then
    return
end
local lspkind = require "lspkind"

local kind_icons = {
    Text = "",
    Method = "m",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = ""
}

local borderstyle = {
    border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"},
    winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None"
}

cmp.setup(
    {
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end
        },
        mapping = cmp.mapping.preset.insert(
            {
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<CR>"] = cmp.mapping.confirm(
                    {
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true
                    }
                )
            }
        ),
        sources = cmp.config.sources(
            {
                {name = "nvim_lsp"},
                {name = "buffer"}
            }
        ),
        formatting = {
            fields = {"kind", "abbr", "menu"},
            format = function(entry, vim_item)
                vim_item.menu =
                    ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snip]",
                    buffer = "[Buff]",
                    path = "[Path]"
                })[entry.source.name]

                -- for tailwind colors
                if vim_item.kind == "Color" then
                    vim_item = require("cmp-tailwind-colors").format(entry, vim_item)

                    if vim_item.kind ~= "Color" then
                        vim_item.menu = "Color"
                        return vim_item
                    end
                end

                vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                return vim_item
            end
        },
        preselect = cmp.PreselectMode.None,
        completion = {completeopt = "noselect"},
        sources = cmp.config.sources(
            {
                {name = "nvim_lsp", priority = 1000},
                {name = "luasnip", priority = 750},
                {name = "buffer", priority = 500},
                {name = "path", priority = 250}
            }
        ),
        duplicates = {
            nvim_lsp = 1,
            luasnip = 1,
            buffer = 1,
            path = 1
        },
        confirm_opts = {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false
        },
        window = {
            completion = borderstyle,
            documentation = borderstyle
        },
    }
)

-- " Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
