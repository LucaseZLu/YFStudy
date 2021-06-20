---@class RoleOperation_DeleteRoleProto : System.ValueType
---@field public RoleId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return RoleOperation_DeleteRoleProto
function m.GetProto(buffer) end

RoleOperation_DeleteRoleProto = m
return m
