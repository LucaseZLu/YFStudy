---@class System_GameServerConfigReturnProto : System.ValueType
---@field public ConfigCount number
---@field public ServerConfigList System_GameServerConfigReturnProto.ConfigItem[]
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return System_GameServerConfigReturnProto
function m.GetProto(buffer) end

System_GameServerConfigReturnProto = m
return m
