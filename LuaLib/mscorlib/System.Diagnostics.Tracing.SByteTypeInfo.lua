---@class System.Diagnostics.Tracing.SByteTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_SByte_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.SByte
---@return System.SByte
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.SByteTypeInfo = m
return m
