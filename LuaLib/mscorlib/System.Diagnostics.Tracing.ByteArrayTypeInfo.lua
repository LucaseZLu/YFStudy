---@class System.Diagnostics.Tracing.ByteArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Byte___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Byte__
---@return System.Byte__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.ByteArrayTypeInfo = m
return m
