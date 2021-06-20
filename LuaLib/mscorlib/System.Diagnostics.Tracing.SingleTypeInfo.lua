---@class System.Diagnostics.Tracing.SingleTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Single_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Single
---@return System.Single
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.SingleTypeInfo = m
return m
