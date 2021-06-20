---@class RoleOperation_CreateRoleProto : System.ValueType
---@field public JobId number
---@field public RoleNickName string
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return RoleOperation_CreateRoleProto
function m.GetProto(buffer) end

RoleOperation_CreateRoleProto = m
return m
