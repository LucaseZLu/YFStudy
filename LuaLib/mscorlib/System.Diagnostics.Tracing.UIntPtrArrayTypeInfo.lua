---@class System.Diagnostics.Tracing.UIntPtrArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_UIntPtr___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.UIntPtr__
---@return System.UIntPtr__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.UIntPtrArrayTypeInfo = m
return m
