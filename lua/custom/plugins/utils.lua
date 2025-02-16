local M = {}

--- Splits a string by a delimiter into an array or substrings.
---
---@param input string String to be split
---@param delimiter string Delimiter or separator to split by
---@return string[]
function M.split_string(input, delimiter)
  local result = {}
  for match in (input .. delimiter):gmatch('(.-)' .. delimiter) do
    table.insert(result, match)
  end

  return result
end

--- Returns a sub-array of the given array.
---
---@generic T
---@param array T[]
---@param from number
---@param to number
---@return T[]
function M.slice(array, from, to)
  return table.move(array, from or 1, to or #array, 1, {})
end

--- Returns the base path of the active buffer.
---
---@return string
function M.buffer_base_path()
  local full_path = vim.api.nvim_buf_get_name(0)
  local path_parts = M.split_string(full_path, '/')
  local base_path = table.concat(M.slice(path_parts, 1, #path_parts - 1), '/')
  return base_path
end

return M
