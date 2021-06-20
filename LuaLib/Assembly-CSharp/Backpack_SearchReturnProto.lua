---@class Backpack_SearchReturnProto : System.ValueType
---@field public BackpackItemCount number
---@field public ItemList Backpack_SearchReturnProto.BackpackItem[]
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Backpack_SearchReturnProto
function m.GetProto(buffer) end

Backpack_SearchReturnProto = m
return m
