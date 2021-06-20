---@class System.Diagnostics.Tracing.UIntPtrTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_UIntPtr_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.UIntPtr
---@return System.UIntPtr
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.UIntPtrTypeInfo = m
return m
