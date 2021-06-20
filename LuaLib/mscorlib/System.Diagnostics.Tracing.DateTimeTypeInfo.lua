---@class System.Diagnostics.Tracing.DateTimeTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_DateTime_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.DateTime
---@return System.DateTime
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.DateTimeTypeInfo = m
return m
