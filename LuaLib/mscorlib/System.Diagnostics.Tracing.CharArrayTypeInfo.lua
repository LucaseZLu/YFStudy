---@class System.Diagnostics.Tracing.CharArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Char___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Char__
---@return System.Char__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.CharArrayTypeInfo = m
return m
