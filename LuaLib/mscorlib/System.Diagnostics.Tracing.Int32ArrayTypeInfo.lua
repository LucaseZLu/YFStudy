---@class System.Diagnostics.Tracing.Int32ArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Int32___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Int32__
---@return System.Int32__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.Int32ArrayTypeInfo = m
return m
