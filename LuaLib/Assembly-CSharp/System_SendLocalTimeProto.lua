---@class System_SendLocalTimeProto : System.ValueType
---@field public LocalTime number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return System_SendLocalTimeProto
function m.GetProto(buffer) end

System_SendLocalTimeProto = m
return m
