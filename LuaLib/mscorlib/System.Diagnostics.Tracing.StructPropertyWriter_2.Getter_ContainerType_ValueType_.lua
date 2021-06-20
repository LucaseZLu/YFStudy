---@class System.Diagnostics.Tracing.StructPropertyWriter_2.Getter_ContainerType_ValueType_ : System.MulticastDelegate
local m = {}

---@virtual
---@param container any
---@return any, any
function m:Invoke(container) end

---@virtual
---@param container any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, any
function m:BeginInvoke(container, callback, object) end

---@virtual
---@param container any
---@param result System.IAsyncResult
---@return any, any
function m:EndInvoke(container, result) end

System.Diagnostics.Tracing.StructPropertyWriter_2.Getter_ContainerType_ValueType_ = m
return m
