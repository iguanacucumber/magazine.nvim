# Changes from [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) & it's sources

## Globally

- improved CI -> updated the actions used and added CI into mag-\* sources
- made releases for magazine.nvim and every sources (they push to Luarock)

## Single commit changes

### magazine.nvim

- Use NormalFloat instead of Normal for cmp.config.window.bordered()'s winhighlight #3
- feature request github issue template
- utils: vimrc.vim -> init.lua (kickstart.nvim based)
- rock: remove SPECREV
- rock: remove .rockspec file, it wasn't used anyway

### mag-*

- add CI, it's pretty much magazine.nvim CI without integrations tests
- doc: precise this is a fork
- add Stylua formating with "" quotes and 2 spaces indenting settings, this does not apply for magazine.nvim

### mag-buffer

- perf: use faster vim.validate

### mag-nvim-lua

- other: Add MIT license (required for Luarock)

## Multi commit

### Use newer APIs like vim.uv and vim.iter instead of vim.loop & vim.tbl\_  and use newer vim.str_utfindex when possible

#### Magazine.nvim

- eff8483f9d67bfb48d43f25f5fcd3c093db92e55
- f6028a8a19fa674d3fef417ba2d68957595dcc50
- 81a0d1c49e42fd531c0e27da5ee2ad1f952abcdd
- 00aaf86b855e8d598b6ed954bca9b3d096e9404b
- 12f94701f023eb60b7a26b32535566f165d33182
- d3ee82553255fa9c6284fd58f1d66581c621d098
- 80b26f0f4e51836b5e3296ed6f3f2a5509a285ab
- 3828bab
- 7707dc3

#### mag-cmdline

- 1f7b87cd87a37ee59424f7bd7e7d3cfd62309ffe

#### mag-nvim-lua

- cd1a0bb9d9f90940391bd8af8a036d1cd54feeb1

#### mag-buffer

- 684d571293ef03269267908e9a7a23a40bf91893
