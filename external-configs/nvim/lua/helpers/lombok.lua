local M = {}

-- Find latest Lombok JAR in /nix/store
function M.get_latest_lombok()
  local candidates = {}

  for _, path in ipairs(vim.fn.glob('/nix/store/*-lombok-*/share/java/lombok.jar', false, true)) do
    local version = path:match 'lombok%-([%d%.]+)'
    if version then
      table.insert(candidates, { path = path, version = version })
    end
  end

  if #candidates == 0 then
    return nil
  end

  table.sort(candidates, function(a, b)
    local function split_version(v)
      local t = {}
      for num in v:gmatch '%d+' do
        table.insert(t, tonumber(num))
      end
      return t
    end
    local va, vb = split_version(a.version), split_version(b.version)
    for i = 1, math.max(#va, #vb) do
      local na, nb = va[i] or 0, vb[i] or 0
      if na ~= nb then
        return na > nb
      end
    end
    return false
  end)

  return candidates[1].path
end

return M
