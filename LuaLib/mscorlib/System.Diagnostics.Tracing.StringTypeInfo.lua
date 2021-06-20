---@class System.Diagnostics.Tracing.StringTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_String_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.String
---@return System.String
function m:WriteData(collector, value) end

---@virtual
---@param value any
---@return any
function m:GetData(value) end

System.Diagnostics.Tracing.StringTypeInfo = m
return m
