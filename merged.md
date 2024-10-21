# Merged PRs from [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) & it's sources 

## nvim-cmp -> magazine.nvim

> [!NOTE]
> When i add a '@' before a PR it means that i have adapted the PR to fit with the other PRs
> Therefore these PRs won't have a patch file for them in the PRs folder (this folder contains unedited patch files from PRs from nvim-cmp, not from the sources)

### Perf

- perf: improve for source providing huge list of items #1980
- perf: use builtin for key normalization #1935
- Do not use sync code in InserEnter #1911

### Fix

- Avoid calling del_extmark on non existing buffer #2053
- fix: don't blow up when nvim_buf_get_lines() returns Blobs #2050
- fix missing required fields in formatting config #2040
- fix(utils): Only call callback if type(callback) == "function" #2038
- fix: the height of docs view get wrong when content lines get wrapped #2032
- fix: The items within the view of Completion are in the wrong order. #2020
- Keep empty lines when showing ghost_text #2002
- fixup! fix: remove deprecated use of vim.tbl_add_reverse_lookup (#1931) #1991

<!-- - @ Use keyword_pattern for is_symbol check #1975  -->

- Fix misc.merge() #1956
- Fix completion menu showing over the cmd win #1904
- Check for complete pattern matches later in the target text #1900
- @ Use get_word so that the word is the same as in core.confirm #1860 (version from @liskin)
- fix(bordered): respect max_width and max_height #1859
- fix: Type check for snippet description #1832 #1833

### Feat

- @ feat: Refactor compare.scopes #2007
- feat: allow more completion highlight control #1972
- @ Multiline snippet ghost text with dynamic window position flip #1955
- @ Allow comparators access to the complete list of entries #1894
- @ Add option to not reverse select_next_item on bottom_up list (#1346) #1711
- @ feat: add col_offset option for doc view #1528
- @ feat: enabled for sources #1314

## cmp-* -> mag-*

### mag-buffer

- @feat: Add show_source option to show the source buffer #74
- feat: support more languages, Keyword pattern #63
- feat: Add option to suggest words in different cases #60 (different casing styles)
- perf: Add debouncing to per-update indexing #51

### mag-cmdline

- feat: Support @ cmdtype completion for input() function #76
- feat: Completion for %(:*) and #(:*) #105
- fix: Escape dollars in names to prevent env-var expansion #117

### mag-nvim-lsp

- Move from after/plugin to plugin and follow plugin best pratices #61
- feat: Respect vim.lsp.commands, client.commands, and server capabilities when executing CompletionItem.command #73

### mag-nvim-lua

- feat: add support for fennel #12
