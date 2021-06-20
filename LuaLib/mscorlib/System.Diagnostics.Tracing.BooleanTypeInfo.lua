---@class System.Diagnostics.Tracing.BooleanTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Boolean_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Boolean
---@return System.Boolean
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.BooleanTypeInfo = m
return m
