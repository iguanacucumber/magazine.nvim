# Merged PRs from [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

> [!NOTE]
> When i use a '@' before a PR it means that i have adapted the PR to fit with the other PRs, (see the PRs folder)
> These won't have a patch file in the PRs folder

## Perf
- perf: improve for source providing huge list of items #1980
- perf: use builtin for key normalization #1935
- Do not use sync code in InserEnter #1911

## Fix
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

## Feat
- @ feat: Refactor compare.scopes #2007
- feat(ghost_text): Added custom multi-line snippets ghost_text support #2001
- feat: allow more completion highlight control #1972
- Allow comparators access to the complete list of entries #1894

