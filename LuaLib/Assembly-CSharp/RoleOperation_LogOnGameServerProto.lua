---@class RoleOperation_LogOnGameServerProto : System.ValueType
---@field public AccountId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return RoleOperation_LogOnGameServerProto
function m.GetProto(buffer) end

RoleOperation_LogOnGameServerProto = m
return m
