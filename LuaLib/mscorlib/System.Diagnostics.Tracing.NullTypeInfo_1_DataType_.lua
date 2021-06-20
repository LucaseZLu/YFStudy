---@class System.Diagnostics.Tracing.NullTypeInfo_1_DataType_ : System.Diagnostics.Tracing.TraceLoggingTypeInfo
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value any
---@return any
function m:WriteData(collector, value) end

---@virtual
---@param value any
---@return any
function m:GetData(value) end

System.Diagnostics.Tracing.NullTypeInfo_1_DataType_ = m
return m
