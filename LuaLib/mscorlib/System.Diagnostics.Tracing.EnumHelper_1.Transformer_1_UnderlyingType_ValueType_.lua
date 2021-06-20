---@class System.Diagnostics.Tracing.EnumHelper_1.Transformer_1_UnderlyingType_ValueType_ : System.MulticastDelegate
local m = {}

---@virtual
---@param value any
---@return any
function m:Invoke(value) end

---@virtual
---@param value any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(value, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Diagnostics.Tracing.EnumHelper_1.Transformer_1_UnderlyingType_ValueType_ = m
return m
