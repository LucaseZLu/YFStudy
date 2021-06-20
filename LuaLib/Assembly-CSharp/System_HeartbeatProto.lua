---@class System_HeartbeatProto : System.ValueType
---@field public LocalTime number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return System_HeartbeatProto
function m.GetProto(buffer) end

System_HeartbeatProto = m
return m
