---@class System.Diagnostics.Tracing.NullableTypeInfo_1_T_ : System.Diagnostics.Tracing.TraceLoggingTypeInfo
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Nullable_1_T_
---@return System.Nullable_1_T_
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.NullableTypeInfo_1_T_ = m
return m
