---@class System.Diagnostics.Tracing.UInt64ArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_UInt64___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.UInt64__
---@return System.UInt64__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.UInt64ArrayTypeInfo = m
return m
