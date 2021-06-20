---@class System.Diagnostics.Tracing.IntPtrArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_IntPtr___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.IntPtr__
---@return System.IntPtr__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.IntPtrArrayTypeInfo = m
return m
