---@class System.Diagnostics.Tracing.UInt32TypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_UInt32_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.UInt32
---@return System.UInt32
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.UInt32TypeInfo = m
return m
