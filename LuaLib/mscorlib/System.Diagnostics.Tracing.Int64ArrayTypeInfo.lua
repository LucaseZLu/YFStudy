---@class System.Diagnostics.Tracing.Int64ArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Int64___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Int64__
---@return System.Int64__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.Int64ArrayTypeInfo = m
return m
