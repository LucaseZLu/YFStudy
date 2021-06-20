---@class System.Diagnostics.Tracing.KeyValuePairTypeInfo_2_K_V_ : System.Diagnostics.Tracing.TraceLoggingTypeInfo
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.Collections.Generic.KeyValuePair_2_K_V_
---@return System.Collections.Generic.KeyValuePair_2_K_V_
function m:WriteData(collector, value) end

---@virtual
---@param value any
---@return any
function m:GetData(value) end

System.Diagnostics.Tracing.KeyValuePairTypeInfo_2_K_V_ = m
return m
