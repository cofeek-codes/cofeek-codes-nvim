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
    border = "rounded",
    -- winhighlight = "Normal:TelescopeNormal,CursorLine:PmenuSel,Search:None",
    scrollbar = false,
}


local formatForTailwindCSS = function(entry, vim_item)
    if vim_item.kind == "Color" and entry.completion_item.documentation then
        local _, _, r, g, b = string.find(entry.completion_item.documentation, "^rgb%((%d+), (%d+), (%d+)")
        if r then
            local color = string.format("%02x", r) .. string.format("%02x", g) .. string.format("%02x", b)
            local group = "Tw_" .. color
            if vim.fn.hlID(group) < 1 then
                vim.api.nvim_set_hl(0, group, { fg = "#" .. color })
            end
            vim_item.kind = "●" -- or "■" or anything
            vim_item.kind_hl_group = group
            return vim_item
        end
    end
    -- vim_item.kind = icons[vim_item.kind] and (icons[vim_item.kind] .. vim_item.kind) or vim_item.kind
    -- or just show the icon
    vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
    return vim_item
end


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

        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = lspkind.cmp_format({
                mode = "symbol_text",
                maxwidth = 50,
                before = function(entry, vim_item)
                    vim_item.menu = "(" .. vim_item.kind .. ")"
                    vim_item.dup = ({
                        nvim_lsp = 0,
                        path = 0,
                    })[entry.source.name] or 0
                    vim_item = formatForTailwindCSS(entry, vim_item) -- for tailwind css autocomplete
                    return vim_item
                end,
            }),
        },
        preselect = cmp.PreselectMode.None,
        completion = { completeopt = "noselect" },
        sources = cmp.config.sources(
            {
                { name = "nvim_lsp", priority = 1000 },
                { name = "luasnip",  priority = 750 },
                { name = "buffer",   priority = 500 },
                { name = "path",     priority = 250 }
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
