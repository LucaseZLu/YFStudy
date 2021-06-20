---@class System.Diagnostics.Tracing.EventDescriptor : System.ValueType
---@field public EventId number
---@field public Version number
---@field public Channel number
---@field public Level number
---@field public Opcode number
---@field public Task number
---@field public Keywords number
local m = {}

---@overload fun(other:System.Diagnostics.Tracing.EventDescriptor):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param event1 System.Diagnostics.Tracing.EventDescriptor
---@param event2 System.Diagnostics.Tracing.EventDescriptor
---@return boolean
function m.op_Equality(event1, event2) end

---@static
---@param event1 System.Diagnostics.Tracing.EventDescriptor
---@param event2 System.Diagnostics.Tracing.EventDescriptor
---@return boolean
function m.op_Inequality(event1, event2) end

System.Diagnostics.Tracing.EventDescriptor = m
return m
