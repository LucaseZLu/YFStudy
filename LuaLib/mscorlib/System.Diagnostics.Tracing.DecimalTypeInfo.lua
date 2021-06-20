---@class System.Diagnostics.Tracing.DecimalTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Decimal_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Decimal
---@return System.Decimal
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.DecimalTypeInfo = m
return m
