---@class Shop_BuyProductProto : System.ValueType
---@field public ProductId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Shop_BuyProductProto
function m.GetProto(buffer) end

Shop_BuyProductProto = m
return m
