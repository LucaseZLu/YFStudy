---@class System.Diagnostics.Tracing.DoubleArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Double___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Double__
---@return System.Double__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.DoubleArrayTypeInfo = m
return m
