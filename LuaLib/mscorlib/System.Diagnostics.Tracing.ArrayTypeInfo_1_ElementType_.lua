---@class System.Diagnostics.Tracing.ArrayTypeInfo_1_ElementType_ : System.Diagnostics.Tracing.TraceLoggingTypeInfo
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value ElementType__
---@return ElementType__
function m:WriteData(collector, value) end

---@virtual
---@param value any
---@return any
function m:GetData(value) end

System.Diagnostics.Tracing.ArrayTypeInfo_1_ElementType_ = m
return m
