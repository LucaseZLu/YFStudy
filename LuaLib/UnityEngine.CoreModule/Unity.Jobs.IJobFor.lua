---@class Unity.Jobs.IJobFor : table
local m = {}

---@abstract
---@param index number
function m:Execute(index) end

Unity.Jobs.IJobFor = m
return m
