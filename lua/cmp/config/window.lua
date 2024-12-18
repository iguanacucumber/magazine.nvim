local window = {}

window.bordered = function(opts)
  opts = opts or {}
  return {
    border = opts.border or 'rounded',
    winhighlight = opts.winhighlight or 'NormalFloat:NormalFloat,FloatBorder:FloatBorder,CursorLine:Visual,Search:None',
    zindex = opts.zindex or 1001,
    scrolloff = opts.scrolloff or 0,
    col_offset = opts.col_offset or 0,
    side_padding = opts.side_padding or 1,
    scrollbar = opts.scrollbar == nil and true or opts.scrollbar,
    max_width = opts.max_width or 0,
    max_height = opts.max_height or 0,
  }
end

return window
