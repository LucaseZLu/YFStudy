---@class System.Diagnostics.Tracing.DateTimeOffsetTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_DateTimeOffset_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.DateTimeOffset
---@return System.DateTimeOffset
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.DateTimeOffsetTypeInfo = m
return m
