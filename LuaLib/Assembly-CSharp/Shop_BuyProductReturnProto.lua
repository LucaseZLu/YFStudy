---@class Shop_BuyProductReturnProto : System.ValueType
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
---@return Shop_BuyProductReturnProto
function m.GetProto(buffer) end

Shop_BuyProductReturnProto = m
return m
