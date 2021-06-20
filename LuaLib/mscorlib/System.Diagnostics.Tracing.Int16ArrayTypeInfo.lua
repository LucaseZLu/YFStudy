---@class System.Diagnostics.Tracing.Int16ArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Int16___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Int16__
---@return System.Int16__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.Int16ArrayTypeInfo = m
return m
