---@class System.Diagnostics.Tracing.PropertyAccessor_1_ContainerType_ : System.Object
local m = {}

---@abstract
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value any
---@return any
function m:Write(collector, value) end

---@abstract
---@param value any
---@return any
function m:GetData(value) end

---@static
---@param property System.Diagnostics.Tracing.PropertyAnalysis
---@return System.Diagnostics.Tracing.PropertyAccessor_1_ContainerType_
function m.Create(property) end

System.Diagnostics.Tracing.PropertyAccessor_1_ContainerType_ = m
return m
