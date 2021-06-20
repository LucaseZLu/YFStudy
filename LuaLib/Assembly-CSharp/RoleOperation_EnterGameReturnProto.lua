---@class RoleOperation_EnterGameReturnProto : System.ValueType
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
---@return RoleOperation_EnterGameReturnProto
function m.GetProto(buffer) end

RoleOperation_EnterGameReturnProto = m
return m
