---@class Goods_EquipPutReturnProto : System.ValueType
---@field public IsSuccess boolean
---@field public MsgCode number
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
---@return Goods_EquipPutReturnProto
function m.GetProto(buffer) end

Goods_EquipPutReturnProto = m
return m
