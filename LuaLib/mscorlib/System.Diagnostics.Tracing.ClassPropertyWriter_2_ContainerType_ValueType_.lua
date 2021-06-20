---@class System.Diagnostics.Tracing.ClassPropertyWriter_2_ContainerType_ValueType_ : System.Object
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param container any
---@return any
function m:Write(collector, container) end

---@virtual
---@param container any
---@return any
function m:GetData(container) end

System.Diagnostics.Tracing.ClassPropertyWriter_2_ContainerType_ValueType_ = m
return m
