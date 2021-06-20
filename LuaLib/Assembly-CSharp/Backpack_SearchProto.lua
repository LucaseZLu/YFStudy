---@class Backpack_SearchProto : System.ValueType
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Backpack_SearchProto
function m.GetProto(buffer) end

Backpack_SearchProto = m
return m
