---@class System.Diagnostics.Tracing.UInt16ArrayTypeInfo : System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_UInt16___
local m = {}

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.UInt16__
---@return System.UInt16__
function m:WriteData(collector, value) end

System.Diagnostics.Tracing.UInt16ArrayTypeInfo = m
return m
