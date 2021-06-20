---@class System.Diagnostics.Tracing.SingleArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Single___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Single__
---@return System.Single__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.SingleArrayTypeInfo = m
return m
