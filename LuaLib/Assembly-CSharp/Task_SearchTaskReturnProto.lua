---@class Task_SearchTaskReturnProto : System.ValueType
---@field public TaskCount number
---@field public CurrTaskItemList Task_SearchTaskReturnProto.TaskItem[]
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@virtual
---@return string
function m:ToArray() end

---@static
---@param buffer string
---@return Task_SearchTaskReturnProto
function m.GetProto(buffer) end

Task_SearchTaskReturnProto = m
return m
