---@class System.Diagnostics.Tracing.EventCounter : System.Object
local m = {}

---@param value number
function m:WriteMetric(value) end

---@virtual
function m:Dispose() end

---@virtual
---@return string
function m:ToString() end

System.Diagnostics.Tracing.EventCounter = m
return m
