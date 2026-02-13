---Sets the table keys to nil.
---@param t table
function table.clear(t)
  for k in next, t do
    t[k] = nil
  end
end

---Finds the table key of a value.
---@param t table
---@param value any
function table.find(t, value)
  for i = #t, 1, -1 do
    if t[i] == value then
      return i
    end
  end
end
