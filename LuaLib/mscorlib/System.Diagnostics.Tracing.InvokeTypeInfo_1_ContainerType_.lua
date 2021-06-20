---@class System.Diagnostics.Tracing.InvokeTypeInfo_1_ContainerType_ : System.Diagnostics.Tracing.TraceLoggingTypeInfo
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value any
---@return any
function m:WriteData(collector, value) end

---@virtual
---@param value any
---@return any
function m:GetData(value) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param valueObj any
function m:WriteObjectData(collector, valueObj) end

System.Diagnostics.Tracing.InvokeTypeInfo_1_ContainerType_ = m
return m
