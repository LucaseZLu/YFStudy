---@class Goods_SearchEquipDetailProto : System.ValueType
---@field public GoodsServerId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Goods_SearchEquipDetailProto
function m.GetProto(buffer) end

Goods_SearchEquipDetailProto = m
return m
