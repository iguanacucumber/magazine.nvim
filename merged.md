# Merged PRs from [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) & it's sources

## nvim-cmp -> magazine.nvim

> [!NOTE]
> When i add a '@' before a PR it means that i have adapted the PR to fit with the other PRs
> Therefore these PRs won't have a patch file for them in the PRs folder (this folder contains unedited patch files from PRs from nvim-cmp, not from the sources)

### Perf

- perf: improve for source providing huge list of items [#1980](https://github.com/hrsh7th/nvim-cmp/pull/1980)
- perf: use builtin for key normalization [#1935](https://github.com/hrsh7th/nvim-cmp/pull/1935)
- Do not use sync code in InserEnter [#1911](https://github.com/hrsh7th/nvim-cmp/pull/1911)

### Fix

- fix: some symbols can't be mapped correctly [#2081](https://github.com/hrsh7th/nvim-cmp/pull/2081)
- support cpying self-referenced table [#2076](https://github.com/hrsh7th/nvim-cmp/pull/2076)
- fix: make <c-;> work again [#2073](https://github.com/hrsh7th/nvim-cmp/pull/2073)
- fix: use \<\* notation for keymap.normalize ([#2069](https://github.com/hrsh7th/nvim-cmp/pull/2069))
- fix: scrollbar thumb ui issue [#2068](https://github.com/hrsh7th/nvim-cmp/pull/2068)
- Avoid calling del_extmark on non existing buffer [#2053](https://github.com/hrsh7th/nvim-cmp/pull/2053)
- fix: don't blow up when nvim_buf_get_lines() returns Blobs [#2050](https://github.com/hrsh7th/nvim-cmp/pull/2050)
- fix missing required fields in formatting config [#2040](https://github.com/hrsh7th/nvim-cmp/pull/2040)
- fix(utils): Only call callback if type(callback) == "function" [#2038](https://github.com/hrsh7th/nvim-cmp/pull/2038)
- fix: the height of docs view get wrong when content lines get wrapped [#2032](https://github.com/hrsh7th/nvim-cmp/pull/2032)
- fix: The items within the view of Completion are in the wrong order. [#2020](https://github.com/hrsh7th/nvim-cmp/pull/2020)
- Keep empty lines when showing ghost_text [#2002](https://github.com/hrsh7th/nvim-cmp/pull/2002)
- fixup! fix: remove deprecated use of vim.tbl_add_reverse_lookup ([#1931](https://github.com/hrsh7th/nvim-cmp/pull/1931)) [#1991](https://github.com/hrsh7th/nvim-cmp/pull/1991)
- Fix misc.merge() [#1956](https://github.com/hrsh7th/nvim-cmp/pull/1956)
- Fix completion menu showing over the cmd win [#1904](https://github.com/hrsh7th/nvim-cmp/pull/1904)
- Check for complete pattern matches later in the target text [#1900](https://github.com/hrsh7th/nvim-cmp/pull/1900)
- @ Use get_word so that the word is the same as in core.confirm [#1860](https://github.com/hrsh7th/nvim-cmp/pull/1860) (version from @liskin)
- fix(bordered): respect max_width and max_height [#1859](https://github.com/hrsh7th/nvim-cmp/pull/1859)
- fix: Type check for snippet description [#1832](https://github.com/hrsh7th/nvim-cmp/pull/1832) [#1833](https://github.com/hrsh7th/nvim-cmp/pull/1833)

### Feat

- @ feat: allow individual hl custamization of scrollbar for docs and menu [#2078](https://github.com/hrsh7th/nvim-cmp/pull/2007)
- @ feat: Refactor compare.scopes [#2007](https://github.com/hrsh7th/nvim-cmp/pull/2007)
- feat: allow more completion highlight control [#1972](https://github.com/hrsh7th/nvim-cmp/pull/1972)
- @ Multiline snippet ghost text with dynamic window position flip [#1955](https://github.com/hrsh7th/nvim-cmp/pull/1955)
- @ Allow comparators access to the complete list of entries [#1894](https://github.com/hrsh7th/nvim-cmp/pull/1894)
- @ Add option to not reverse select_next_item on bottom_up list ([#1346](https://github.com/hrsh7th/nvim-cmp/pull/1346)) [#1711](https://github.com/hrsh7th/nvim-cmp/pull/1711)
- @ feat: config.view.entries.vertical_positioning = 'above'|'below' [#1701](https://github.com/hrsh7th/nvim-cmp/pull/1701) (integrated with [#1955](https://github.com/hrsh7th/nvim-cmp/pull/1955) from above)
- @ feat: add col_offset option for doc view [#1528](https://github.com/hrsh7th/nvim-cmp/pull/1528)
- @ feat: enabled for sources [#1314](https://github.com/hrsh7th/nvim-cmp/pull/1314)

## cmp-* -> mag-*

On every sources i've applied this PR, which checks if a plugins is loaded before loading it: [#1](https://github.com/iguanacucumber/mag-buffer/pull/1) or something similar (like with mag-nvim-lsp)

### mag-buffer

- @feat: Add show_source option to show the source buffer [#74](https://github.com/hrsh7th/cmp-buffer/pull/74)
- feat: support more languages, Keyword pattern [#63](https://github.com/hrsh7th/cmp-buffer/pull/63)
- feat: Add option to suggest words in different cases [#60](https://github.com/hrsh7th/cmp-buffer/pull/60) (different casing styles)
- perf: Add debouncing to per-update indexing [#51](https://github.com/hrsh7th/cmp-buffer/pull/51)

### mag-cmdline

- feat: Support @ cmdtype completion for input() function [#76](https://github.com/hrsh7th/cmp-cmdline/pull/76)
- feat: Completion for %(:*) and #(:*) [#105](https://github.com/hrsh7th/cmp-cmdline/pull/105)
- fix: Escape dollars in names to prevent env-var expansion [#117](https://github.com/hrsh7th/cmp-cmdline/pull/117)

### mag-nvim-lsp

- Move from after/plugin to plugin and follow plugin best pratices [#61](https://github.com/hrsh7th/cmp-nvim-lsp/pull/61)
- feat: Respect vim.lsp.commands, client.commands, and server capabilities when executing CompletionItem.command [#73](https://github.com/hrsh7th/cmp-nvim-lsp/pull/73)

### mag-nvim-lua

- feat: add support for fennel [#12](https://github.com/hrsh7th/cmp-nvim-lua/pull/12)
