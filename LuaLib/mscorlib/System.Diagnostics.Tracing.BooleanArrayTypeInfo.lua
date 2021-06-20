---@class System.Diagnostics.Tracing.BooleanArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Boolean___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Boolean__
---@return System.Boolean__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.BooleanArrayTypeInfo = m
return m
