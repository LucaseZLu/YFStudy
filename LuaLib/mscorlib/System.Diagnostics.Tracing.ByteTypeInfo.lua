---@class System.Diagnostics.Tracing.ByteTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Byte_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Byte
---@return System.Byte
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.ByteTypeInfo = m
return m
