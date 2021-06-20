---@class Goods_UseItemProto : System.ValueType
---@field public BackpackItemId number
---@field public GoodsId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Goods_UseItemProto
function m.GetProto(buffer) end

Goods_UseItemProto = m
return m
