---@class System.Diagnostics.Tracing.Int64TypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Int64_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Int64
---@return System.Int64
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.Int64TypeInfo = m
return m
