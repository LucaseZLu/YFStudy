---@class System.Diagnostics.Tracing.EventSourceActivity : System.Object
---@field public EventSource System.Diagnostics.Tracing.EventSource
---@field public Id System.Guid
local m = {}

---@static
---@param eventSource System.Diagnostics.Tracing.EventSource
---@return System.Diagnostics.Tracing.EventSourceActivity
function m.op_Implicit(eventSource) end

---@overload fun(eventName:string):
---@overload fun(eventName:string, options:System.Diagnostics.Tracing.EventSourceOptions):
---@overload fun(eventName:string, data:any):
---@param eventName string
---@param options System.Diagnostics.Tracing.EventSourceOptions
---@param data any
---@return System.Diagnostics.Tracing.EventSourceActivity
function m:Start(eventName, options, data) end

---@overload fun(eventName:string)
---@overload fun(eventName:string, data:any)
---@param data any
function m:Stop(data) end

---@overload fun(eventName:string, data:any)
---@overload fun(eventName:string, options:System.Diagnostics.Tracing.EventSourceOptions)
---@overload fun(eventName:string)
---@overload fun(source:System.Diagnostics.Tracing.EventSource, eventName:string, options:System.Diagnostics.Tracing.EventSourceOptions, data:any)
---@param eventName string
---@param options System.Diagnostics.Tracing.EventSourceOptions
---@param data any
function m:Write(eventName, options, data) end

---@virtual
function m:Dispose() end

System.Diagnostics.Tracing.EventSourceActivity = m
return m
