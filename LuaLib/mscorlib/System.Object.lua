---@class System.Object : System.Object
local m = {}

---@abstract
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value any
---@return any
function m:Write(collector, value) end

---@abstract
---@param value any
---@return any
function m:GetData(value) end

---@static
---@param property System.Diagnostics.Tracing.PropertyAnalysis
---@return any
function m.Create(property) end

System.Object = m
return m
