return {
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
	sources = {
	  { name = 'nvim_lsp' },
	  { name = 'buffer' },
	  { name = 'path' },
	  { name = 'luasnip' },
	},
	mapping = cmp.mapping.preset.insert({
	  ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
	  ["<C-n>"] = cmp.mapping.select_next_item({ behavior = "select" }),
	  ["<CR>"] = cmp.mapping.confirm({ select = true }),
	  ["<C-Space>"] = cmp.mapping.complete(),
	}),
      })
    end,
  },
}

