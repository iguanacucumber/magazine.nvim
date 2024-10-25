local debug = {}

debug.flag = false

---Print log
---@vararg any
debug.log = function(...)
  if debug.flag then
    local data = {}
    for _, v in ipairs({ ... }) do
      if not vim.iter({ 'string', 'number', 'boolean' }):any(function(...)
        return type(v) == ...
      end) then
        v = vim.inspect(v)
      end
      table.insert(data, v)
    end
    print(table.concat(data, '\t'))
  end
end

return debug
