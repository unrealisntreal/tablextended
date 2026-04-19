local require = require
local pairs = pairs
local pcall = pcall

do
  local success, result = pcall(require, 'table.new')
  table.fixed = (success and result) or function()
    return { }
  end
end

do
  local success, result = pcall(require, 'table.clear')
  table.clear = (success and result) or function(t)
    for k in pairs(t) do
      t[k] = nil
    end
  end
end

function table.find(t, value)
  for i = #t, 1, -1 do
    if t[i] == value then
      return i
    end
  end
end

function table.clone(t, array)
  local new = { }
  if array then
    for i = #t, 1, -1 do
      new[i] = t[i]
    end
  else
    for k, v in pairs(t) do
      new[k] = v
    end
  end
  return new
end
