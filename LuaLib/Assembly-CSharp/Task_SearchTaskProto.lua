---@class Task_SearchTaskProto : System.ValueType
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Task_SearchTaskProto
function m.GetProto(buffer) end

Task_SearchTaskProto = m
return m
