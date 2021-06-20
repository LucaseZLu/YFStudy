---@class Goods_EquipPutProto : System.ValueType
---@field public Type number
---@field public GoodsId number
---@field public GoodsServerId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Goods_EquipPutProto
function m.GetProto(buffer) end

Goods_EquipPutProto = m
return m
