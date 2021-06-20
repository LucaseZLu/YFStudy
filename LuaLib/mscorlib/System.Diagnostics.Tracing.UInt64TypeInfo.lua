---@class System.Diagnostics.Tracing.UInt64TypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_UInt64_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.UInt64
---@return System.UInt64
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.UInt64TypeInfo = m
return m
