---@class RoleOperation_SelectRoleInfoProto : System.ValueType
---@field public RoldId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return RoleOperation_SelectRoleInfoProto
function m.GetProto(buffer) end

RoleOperation_SelectRoleInfoProto = m
return m
