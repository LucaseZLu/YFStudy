---@class System.Diagnostics.Tracing.DoubleTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Double_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Double
---@return System.Double
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.DoubleTypeInfo = m
return m
