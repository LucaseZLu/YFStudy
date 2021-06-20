---@class System.Diagnostics.Tracing.GuidArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Guid___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Guid__
---@return System.Guid__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.GuidArrayTypeInfo = m
return m
