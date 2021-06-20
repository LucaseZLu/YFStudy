---@class System.Diagnostics.Tracing.CharTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Char_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Char
---@return System.Char
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.CharTypeInfo = m
return m
