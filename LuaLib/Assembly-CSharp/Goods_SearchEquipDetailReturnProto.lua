---@class Goods_SearchEquipDetailReturnProto : System.ValueType
---@field public EnchantLevel number
---@field public BaseAttr1Type number
---@field public BaseAttr1Value number
---@field public BaseAttr2Type number
---@field public BaseAttr2Value number
---@field public HP number
---@field public MP number
---@field public Attack number
---@field public Defense number
---@field public Hit number
---@field public Dodge number
---@field public Cri number
---@field public Res number
---@field public IsPutOn number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Goods_SearchEquipDetailReturnProto
function m.GetProto(buffer) end

Goods_SearchEquipDetailReturnProto = m
return m
