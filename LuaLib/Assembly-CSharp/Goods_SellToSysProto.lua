---@class Goods_SellToSysProto : System.ValueType
---@field public roleBackpackId number
---@field public GoodsType number
---@field public GoodsId number
---@field public GoodsServerId number
---@field public SellCount number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Goods_SellToSysProto
function m.GetProto(buffer) end

Goods_SellToSysProto = m
return m
