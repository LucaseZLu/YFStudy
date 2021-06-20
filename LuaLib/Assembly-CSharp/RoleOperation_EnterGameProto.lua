---@class RoleOperation_EnterGameProto : System.ValueType
---@field public RoleId number
---@field public ChannelId number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return RoleOperation_EnterGameProto
function m.GetProto(buffer) end

RoleOperation_EnterGameProto = m
return m
