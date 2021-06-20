---@class RoleOperation_LogOnGameServerReturnProto : System.ValueType
---@field public RoleCount number
---@field public RoleList RoleOperation_LogOnGameServerReturnProto.RoleItem[]
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return RoleOperation_LogOnGameServerReturnProto
function m.GetProto(buffer) end

RoleOperation_LogOnGameServerReturnProto = m
return m
