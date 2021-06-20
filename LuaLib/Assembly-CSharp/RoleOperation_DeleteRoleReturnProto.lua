---@class RoleOperation_DeleteRoleReturnProto : System.ValueType
---@field public IsSuccess boolean
---@field public MsgCode number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return RoleOperation_DeleteRoleReturnProto
function m.GetProto(buffer) end

RoleOperation_DeleteRoleReturnProto = m
return m
