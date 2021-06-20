---@class Goods_SellToSysReturnProto : System.ValueType
---@field public IsSuccess boolean
---@field public MsgCode number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Goods_SellToSysReturnProto
function m.GetProto(buffer) end

Goods_SellToSysReturnProto = m
return m
