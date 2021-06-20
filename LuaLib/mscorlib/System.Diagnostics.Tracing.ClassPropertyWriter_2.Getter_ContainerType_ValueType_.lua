---@class System.Diagnostics.Tracing.ClassPropertyWriter_2.Getter_ContainerType_ValueType_ : System.MulticastDelegate
local m = {}

---@virtual
---@param container any
---@return any
function m:Invoke(container) end

---@virtual
---@param container any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(container, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Diagnostics.Tracing.ClassPropertyWriter_2.Getter_ContainerType_ValueType_ = m
return m
