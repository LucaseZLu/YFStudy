---@class System.Diagnostics.Tracing.GuidTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_Guid_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Guid
---@return System.Guid
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.GuidTypeInfo = m
return m
