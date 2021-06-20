---@class System.Diagnostics.Tracing.UInt16TypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_UInt16_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.UInt16
---@return System.UInt16
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.UInt16TypeInfo = m
return m
