---@class System.Diagnostics.Tracing.Int16TypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Int16_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Int16
---@return System.Int16
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.Int16TypeInfo = m
return m
