---@class Backpack_GoodsChangeReturnProto : System.ValueType
---@field public BackpackItemChangeCount number
---@field public ItemList Backpack_GoodsChangeReturnProto.ChangeItem[]
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Backpack_GoodsChangeReturnProto
function m.GetProto(buffer) end

Backpack_GoodsChangeReturnProto = m
return m
