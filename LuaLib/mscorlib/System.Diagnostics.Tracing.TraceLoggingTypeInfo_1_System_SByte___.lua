---@class System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_SByte___ : System.Diagnostics.Tracing.TraceLoggingTypeInfo
---@field public Instance System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_SByte___ @static
local m = {}

---@abstract
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.SByte__
---@return System.SByte__
function m:WriteData(collector, value) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value any
function m:WriteObjectData(collector, value) end

System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_SByte___ = m
return m
