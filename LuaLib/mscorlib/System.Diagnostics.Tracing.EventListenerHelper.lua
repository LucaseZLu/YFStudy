---@class System.Diagnostics.Tracing.EventListenerHelper : System.Diagnostics.Tracing.EventListener
local m = {}

---@static
---@param eventSource System.Diagnostics.Tracing.EventSource
---@return number
function m.EventSourceIndex(eventSource) end

System.Diagnostics.Tracing.EventListenerHelper = m
return m
