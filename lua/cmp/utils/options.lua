local M = {}

-- Set window option without triggering the OptionSet event
---@param window number
---@param name string
---@param value any
M.win_set_option = function(window, name, value)
  local eventignore = vim.opt.eventignore:get()
  vim.opt.eventignore:append('OptionSet')
  if vim.fn.has('nvim-0.10') == 1 then
    vim.api.nvim_set_option_value(name, value, { win = window })
  else
    vim.api.nvim_win_set_option(window, name, value)
  end
  vim.opt.eventignore = eventignore
end

-- Set buffer option without triggering the OptionSet event
---@param buffer number
---@param name string
---@param value any
M.buf_set_option = function(buffer, name, value)
  local eventignore = vim.opt.eventignore:get()
  vim.opt.eventignore:append('OptionSet')
  if vim.fn.has('nvim-0.10') == 1 then
    vim.api.nvim_set_option_value(name, value, { buf = buffer })
  else
    vim.api.nvim_buf_set_option(buffer, name, value)
  end
  vim.opt.eventignore = eventignore
end

return M
