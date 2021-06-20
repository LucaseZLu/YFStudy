---@class System.Diagnostics.Tracing.TimeSpanTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_TimeSpan_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.TimeSpan
---@return System.TimeSpan
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.TimeSpanTypeInfo = m
return m
