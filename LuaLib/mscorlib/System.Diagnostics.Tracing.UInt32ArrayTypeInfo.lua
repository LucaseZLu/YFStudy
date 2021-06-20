---@class System.Diagnostics.Tracing.UInt32ArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_UInt32___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.UInt32__
---@return System.UInt32__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.UInt32ArrayTypeInfo = m
return m
