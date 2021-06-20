---@class System.Diagnostics.Tracing.EventProvider : System.Object
local m = {}

---@virtual
function m:Dispose() end

---@virtual
function m:Close() end

---@overload fun(level:number, keywords:number):
---@return boolean
function m:IsEnabled() end

---@static
---@return System.Diagnostics.Tracing.EventProvider.WriteEventErrorCode
function m.GetLastWriteEventError() end

System.Diagnostics.Tracing.EventProvider = m
return m
