# About this fork

## magazine.nvim is a "beta" nvim-cmp to fix bugs & implement new features early 

First of all I am not hard forking nvim-cmp. All i did was implementing alot of PRs see [merged.md](https://github.com/iguanacucumber/magazine.nvim/blob/main/merged.md) & made some changes see [changes.md](https://github.com/iguanacucumber/magazine.nvim/blob/main/changes.md)

All credit should go towards the people who made those pull requests.

I made this plugin because i really liked [yioneko's performance fork](https://github.com/hrsh7th/nvim-cmp/pull/1980) and that i had a really annoying bug which i made a [PR](https://github.com/hrsh7th/nvim-cmp/pull/2038) for. While waiting for my PR to get reviewed i changed nvim-cmp in my config to use my own fork from this PR. And then i told myself why wouldn't i also include yioneko's performance fork then i added other PRs and it resulted into this. At first i kept this to myself, but why not share it, it help others with annoying bugs.

The goal of magazine.nvim is NOT to replace nvim-cmp, it's goal is to fix annoying bugs & implement new features early and more generaly to be like a "beta" version of nvim-cmp relieving burden from hrsh7th ( nvim-cmp maintainer & author ) by upstreaming changes to the main repo.

btw i called magazine.nvim like this just to avoid confusion with the original project, the fork from my PR and the "new" fork with changes.

If you have any bugs from those PRs/changes, create an issue on this repo, so we'll be able to make changes quicker. 

## before switching to this fork do this:

```lua
{ --* the completion engine *--
  "iguanacucumber/magazine.nvim",
  name = "nvim-cmp", -- Otherwise highlighting gets messed up
},

--* the sources *--
{ "iguanacucumber/mag-nvim-lsp", name = "cmp-nvim-lsp", opts = {} },
{ "iguanacucumber/mag-nvim-lua", name = "cmp-nvim-lua" },
{ "iguanacucumber/mag-buffer", name = "cmp-buffer" },
{ "iguanacucumber/mag-cmdline", name = "cmp-cmdline" },

"https://codeberg.org/FelipeLema/cmp-async-path", -- not by me, but better than cmp-path
```

## Here's the full default config

The default config is kinda hard to see unless you plunge into the doc and the wiki, so to make it easier here's the default config

Alot can be changed in the config via cmp.? functions, see the wiki for that

```lua
local compare = require('cmp.config.compare')
local types = require('cmp.types')

local WIDE_HEIGHT = 40

---@return cmp.ConfigSchema
return function()
  ---@type cmp.ConfigSchema
  local config = {
    enabled = function()
      local disabled = false
      disabled = disabled or (vim.api.nvim_get_option_value('buftype', { buf = 0 }) == 'prompt')
      disabled = disabled or (vim.fn.reg_recording() ~= '')
      disabled = disabled or (vim.fn.reg_executing() ~= '')
      return not disabled
    end,

    performance = {
      debounce = 60,
      throttle = 30,
      fetching_timeout = 500,
      filtering_context_budget = 3,
      confirm_resolve_timeout = 80,
      async_budget = 1,
      max_view_entries = 200,
    },

    preselect = types.cmp.PreselectMode.Item,

    mapping = {},

    snippet = {
      expand = vim.fn.has('nvim-0.10') == 1 and function(args)
        vim.snippet.expand(args.body)
      end or function(_)
        error('snippet engine is not configured.')
      end,
    },

    completion = {
      autocomplete = {
        types.cmp.TriggerEvent.TextChanged,
      },
      completeopt = 'menu,menuone,noselect',
      keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
      keyword_length = 1,
    },

    formatting = {
      expandable_indicator = true,
      fields = { 'abbr', 'kind', 'menu' },
      format = function(_, vim_item)
        return vim_item
      end,
    },

    matching = {
      disallow_fuzzy_matching = false,
      disallow_fullfuzzy_matching = false,
      disallow_partial_fuzzy_matching = true,
      disallow_partial_matching = false,
      disallow_prefix_unmatching = false,
      disallow_symbol_nonprefix_matching = true,
    },

    sorting = {
      priority_weight = 2,
      comparators = {
        compare.offset,
        compare.exact,
        -- compare.scopes,
        compare.score,
        compare.recently_used,
        compare.locality,
        compare.kind,
        -- compare.sort_text,
        compare.length,
        compare.order,
      },
    },

    sources = {},

    confirmation = {
      default_behavior = types.cmp.ConfirmBehavior.Insert,
      get_commit_characters = function(commit_characters)
        return commit_characters
      end,
    },

    event = {},

    experimental = {
      ghost_text = false,
    },

    view = {
      entries = {
        name = 'custom',
        selection_order = 'top_down',
        vertical_positioning = 'below',
        follow_cursor = false,
      },
      docs = {
        auto_open = true,
      },
    },

    window = {
      completion = {
        border = { '', '', '', '', '', '', '', '' },
        winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
        scrollbar_winhighlight = 'EndOfBuffer:PmenuSbar,NormalFloat:PmenuSbar',
        scrollbar_thumb_winhighlight = 'EndOfBuffer:PmenuThumb,NormalFloat:PmenuThumb',
        winblend = vim.o.pumblend,
        scrolloff = 0,
        col_offset = 0,
        side_padding = 1,
        scrollbar = true,
      },
      documentation = {
        max_height = math.floor(WIDE_HEIGHT * (WIDE_HEIGHT / vim.o.lines)),
        max_width = math.floor((WIDE_HEIGHT * 2) * (vim.o.columns / (WIDE_HEIGHT * 2 * 16 / 9))),
        border = { '', '', '', ' ', '', '', '', ' ' },
        winhighlight = 'FloatBorder:NormalFloat',
        scrollbar_winhighlight = 'EndOfBuffer:PmenuSbar,NormalFloat:PmenuSbar',
        scrollbar_thumb_winhighlight = 'EndOfBuffer:PmenuThumb,NormalFloat:PmenuThumb',
        winblend = vim.o.pumblend,
        col_offset = 0,
      },
    },
  }
  return config
end
```

# nvim-cmp (fork)

A completion engine plugin for neovim written in Lua.
Completion sources are installed from external repositories and "sourced".

https://github.com/hrsh7th/nvim-cmp/assets/22756295/afa70011-9121-4e42-aedd-0153b630eeab

Readme!
====================

1. There is a GitHub issue that documents [breaking changes](https://github.com/hrsh7th/nvim-cmp/issues/231) for nvim-cmp. Subscribe to the issue to be notified of upcoming breaking changes.
2. This is my hobby project. You can support me via GitHub sponsors.
3. Bug reports are welcome, but don't expect a fix unless you provide minimal configuration and steps to reproduce your issue.
4. The `cmp.mapping.preset.*` is pre-defined configuration that aims to mimic neovim's native like behavior. It can be changed without announcement. Please manage key-mapping by yourself.

Concept
====================

- Full support for LSP completion related capabilities
- Powerful customizability via Lua functions
- Smart handling of key mappings
- No flicker


Setup
====================

### Recommended Configuration

This example configuration uses `vim-plug` as the plugin manager and `vim-vsnip` as a snippet plugin.

```lua
call plug#begin(s:plug_dir)
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'

call plug#end()

lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
  -- Set configuration for specific filetype.
  --[[ cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' },
    }, {
      { name = 'buffer' },
    })
 })
 require("cmp_git").setup() ]]-- 

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
    capabilities = capabilities
  }
EOF
```


### Where can I find more completion sources?

Have a look at the [Wiki](https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources) and the `nvim-cmp` [GitHub topic](https://github.com/topics/nvim-cmp).


### Where can I find advanced configuration examples?

See the [Wiki](https://github.com/hrsh7th/nvim-cmp/wiki).
