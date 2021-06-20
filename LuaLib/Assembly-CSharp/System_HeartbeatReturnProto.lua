---@class System_HeartbeatReturnProto : System.ValueType
---@field public LocalTime number
---@field public ServerTime number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return System_HeartbeatReturnProto
function m.GetProto(buffer) end

System_HeartbeatReturnProto = m
return m
