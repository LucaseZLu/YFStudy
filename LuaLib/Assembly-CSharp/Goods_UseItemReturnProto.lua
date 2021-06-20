---@class Goods_UseItemReturnProto : System.ValueType
---@field public IsSuccess boolean
---@field public MsgCode number
---@field public GoodsId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Goods_UseItemReturnProto
function m.GetProto(buffer) end

Goods_UseItemReturnProto = m
return m
