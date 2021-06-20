---@class System.Diagnostics.Tracing.IntPtrTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_IntPtr_
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.IntPtr
---@return System.IntPtr
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.IntPtrTypeInfo = m
return m
