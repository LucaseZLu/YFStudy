---@class System.Diagnostics.Tracing.Int32TypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Int32_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Int32
---@return System.Int32
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.Int32TypeInfo = m
return m
